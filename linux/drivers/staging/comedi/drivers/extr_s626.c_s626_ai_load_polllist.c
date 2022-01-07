
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 int CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 int S626_EOPL ;
 int S626_RANGE_10V ;
 int S626_RANGE_5V ;

__attribute__((used)) static int s626_ai_load_polllist(u8 *ppl, struct comedi_cmd *cmd)
{
 int n;

 for (n = 0; n < cmd->chanlist_len; n++) {
  if (CR_RANGE(cmd->chanlist[n]) == 0)
   ppl[n] = CR_CHAN(cmd->chanlist[n]) | S626_RANGE_5V;
  else
   ppl[n] = CR_CHAN(cmd->chanlist[n]) | S626_RANGE_10V;
 }
 if (n != 0)
  ppl[n - 1] |= S626_EOPL;

 return n;
}
