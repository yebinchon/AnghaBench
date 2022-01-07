
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* d; } ;
struct TYPE_4__ {scalar_t__ tty; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int MAX_NR_CONSOLES ;
 int stop_tty (scalar_t__) ;
 TYPE_3__* vc_cons ;

__attribute__((used)) static void speakup_stop_ttys(void)
{
 int i;

 for (i = 0; i < MAX_NR_CONSOLES; i++)
  if (vc_cons[i].d && vc_cons[i].d->port.tty)
   stop_tty(vc_cons[i].d->port.tty);
}
