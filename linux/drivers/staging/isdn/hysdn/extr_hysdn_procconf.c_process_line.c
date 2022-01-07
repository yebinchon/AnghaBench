
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct conf_writedata {unsigned char* conf_line; int channel; TYPE_1__* card; } ;
struct TYPE_3__ {int debug_flags; } ;


 int ERR_INV_CHAN ;
 int LOG_CNF_DATA ;
 int LOG_CNF_LINE ;
 int LOG_CNF_MISC ;
 int hysdn_addlog (TYPE_1__*,char*,...) ;
 int hysdn_tx_cfgline (TYPE_1__*,unsigned char*,int) ;

__attribute__((used)) static int
process_line(struct conf_writedata *cnf)
{
 unsigned char *cp = cnf->conf_line;
 int i;

 if (cnf->card->debug_flags & LOG_CNF_LINE)
  hysdn_addlog(cnf->card, "conf line: %s", cp);

 if (*cp == '-') {
  cp++;

  if (*cp++ != 'c')
   return (0);
  i = 0;
  while ((*cp <= '9') && (*cp >= '0'))
   i = i * 10 + *cp++ - '0';
  if (i > 65535) {
   if (cnf->card->debug_flags & LOG_CNF_MISC)
    hysdn_addlog(cnf->card, "conf channel invalid  %d", i);
   return (-ERR_INV_CHAN);
  }
  cnf->channel = i & 0xFFFF;
  return (0);
 }
 if (*cp == '*') {
  if (cnf->card->debug_flags & LOG_CNF_DATA)
   hysdn_addlog(cnf->card, "conf chan=%d %s", cnf->channel, cp);
  return (hysdn_tx_cfgline(cnf->card, cnf->conf_line + 1,
      cnf->channel));
 }
 return (0);
}
