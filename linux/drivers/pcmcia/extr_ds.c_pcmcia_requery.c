
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_socket {int state; scalar_t__ functions; int pcmcia_pfc; int dev; int ops_mutex; scalar_t__ fake_cis; } ;
struct TYPE_3__ {int nfn; } ;
typedef TYPE_1__ cistpl_longlink_mfc_t ;


 int BIND_FN_ALL ;
 int CISTPL_LONGLINK_MFC ;
 int SOCKET_PRESENT ;
 int bus_for_each_dev (int *,int *,int *,int ) ;
 scalar_t__ bus_rescan_devices (int *) ;
 int dev_warn (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pccard_read_tuple (struct pcmcia_socket*,int ,int ,TYPE_1__*) ;
 int pcmcia_bus_type ;
 int pcmcia_card_add (struct pcmcia_socket*) ;
 int pcmcia_card_remove (struct pcmcia_socket*,int *) ;
 int pcmcia_device_add (struct pcmcia_socket*,int ) ;
 int pcmcia_requery_callback ;

__attribute__((used)) static void pcmcia_requery(struct pcmcia_socket *s)
{
 int has_pfc;

 if (!(s->state & SOCKET_PRESENT))
  return;

 if (s->functions == 0) {
  pcmcia_card_add(s);
  return;
 }




 bus_for_each_dev(&pcmcia_bus_type, ((void*)0), ((void*)0), pcmcia_requery_callback);



 if (s->fake_cis) {
  int old_funcs, new_funcs;
  cistpl_longlink_mfc_t mfc;


  old_funcs = s->functions;

  if (!pccard_read_tuple(s, BIND_FN_ALL, CISTPL_LONGLINK_MFC,
     &mfc))
   new_funcs = mfc.nfn;
  else
   new_funcs = 1;
  if (old_funcs != new_funcs) {

   pcmcia_card_remove(s, ((void*)0));
   s->functions = 0;
   pcmcia_card_add(s);
  }
 }




 mutex_lock(&s->ops_mutex);
 has_pfc = s->pcmcia_pfc;
 mutex_unlock(&s->ops_mutex);
 if (has_pfc)
  pcmcia_device_add(s, 0);



 if (bus_rescan_devices(&pcmcia_bus_type))
  dev_warn(&s->dev, "rescanning the bus failed\n");
}
