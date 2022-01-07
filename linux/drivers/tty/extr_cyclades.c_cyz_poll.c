
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct cyclades_port {int throttle; } ;
struct cyclades_card {int intr_enabled; unsigned int nports; struct cyclades_port* ports; } ;


 unsigned long HZ ;
 unsigned int NR_CARDS ;
 struct cyclades_card* cy_card ;
 int cy_is_Z (struct cyclades_card*) ;
 int cyz_handle_cmd (struct cyclades_card*) ;
 int cyz_handle_rx (struct cyclades_port*) ;
 int cyz_handle_tx (struct cyclades_port*) ;
 int cyz_is_loaded (struct cyclades_card*) ;
 unsigned long cyz_polling_cycle ;
 int cyz_timerlist ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;

__attribute__((used)) static void cyz_poll(struct timer_list *unused)
{
 struct cyclades_card *cinfo;
 struct cyclades_port *info;
 unsigned long expires = jiffies + HZ;
 unsigned int port, card;

 for (card = 0; card < NR_CARDS; card++) {
  cinfo = &cy_card[card];

  if (!cy_is_Z(cinfo))
   continue;
  if (!cyz_is_loaded(cinfo))
   continue;


  if (!cinfo->intr_enabled) {
   cinfo->intr_enabled = 1;
   continue;
  }

  cyz_handle_cmd(cinfo);

  for (port = 0; port < cinfo->nports; port++) {
   info = &cinfo->ports[port];

   if (!info->throttle)
    cyz_handle_rx(info);
   cyz_handle_tx(info);
  }

  expires = jiffies + cyz_polling_cycle;
 }
 mod_timer(&cyz_timerlist, expires);
}
