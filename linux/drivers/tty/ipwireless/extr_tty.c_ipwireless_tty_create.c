
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tty {int dummy; } ;
struct ipw_network {int dummy; } ;
struct ipw_hardware {int dummy; } ;


 int IPWIRELESS_PCMCIA_MINORS ;
 int IPWIRELESS_PCMCIA_MINOR_RANGE ;
 int IPW_CHANNEL_DIALLER ;
 int IPW_CHANNEL_RAS ;
 int TTYTYPE_MODEM ;
 int TTYTYPE_MONITOR ;
 int TTYTYPE_RAS_RAW ;
 scalar_t__ add_tty (int,struct ipw_hardware*,struct ipw_network*,int,int,int ) ;
 struct ipw_tty** ttys ;

struct ipw_tty *ipwireless_tty_create(struct ipw_hardware *hardware,
          struct ipw_network *network)
{
 int i, j;

 for (i = 0; i < IPWIRELESS_PCMCIA_MINOR_RANGE; i++) {
  int allfree = 1;

  for (j = i; j < IPWIRELESS_PCMCIA_MINORS;
    j += IPWIRELESS_PCMCIA_MINOR_RANGE)
   if (ttys[j] != ((void*)0)) {
    allfree = 0;
    break;
   }

  if (allfree) {
   j = i;

   if (add_tty(j, hardware, network,
     IPW_CHANNEL_DIALLER, IPW_CHANNEL_RAS,
     TTYTYPE_MODEM))
    return ((void*)0);

   j += IPWIRELESS_PCMCIA_MINOR_RANGE;
   if (add_tty(j, hardware, network,
     IPW_CHANNEL_DIALLER, -1,
     TTYTYPE_MONITOR))
    return ((void*)0);

   j += IPWIRELESS_PCMCIA_MINOR_RANGE;
   if (add_tty(j, hardware, network,
     IPW_CHANNEL_RAS, -1,
     TTYTYPE_RAS_RAW))
    return ((void*)0);

   return ttys[i];
  }
 }
 return ((void*)0);
}
