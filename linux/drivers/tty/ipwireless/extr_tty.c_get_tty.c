
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tty {int dummy; } ;


 int IPWIRELESS_PCMCIA_MINOR_RANGE ;
 int TTYTYPE_RAS_RAW ;
 int ipwireless_loopback ;
 struct ipw_tty** ttys ;

__attribute__((used)) static struct ipw_tty *get_tty(int index)
{





 if (!ipwireless_loopback && index >=
    IPWIRELESS_PCMCIA_MINOR_RANGE * TTYTYPE_RAS_RAW)
  return ((void*)0);

 return ttys[index];
}
