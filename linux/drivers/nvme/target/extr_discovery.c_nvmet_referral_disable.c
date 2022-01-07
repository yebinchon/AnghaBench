
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {int enabled; int entry; } ;


 int down_write (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int nvmet_config_sem ;
 int nvmet_port_disc_changed (struct nvmet_port*,int *) ;
 int up_write (int *) ;

void nvmet_referral_disable(struct nvmet_port *parent, struct nvmet_port *port)
{
 down_write(&nvmet_config_sem);
 if (!list_empty(&port->entry)) {
  port->enabled = 0;
  list_del_init(&port->entry);
  nvmet_port_disc_changed(parent, ((void*)0));
 }
 up_write(&nvmet_config_sem);
}
