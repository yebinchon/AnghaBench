
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_port {int enabled; int referrals; int entry; } ;


 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int nvmet_config_sem ;
 int nvmet_port_disc_changed (struct nvmet_port*,int *) ;
 int up_write (int *) ;

void nvmet_referral_enable(struct nvmet_port *parent, struct nvmet_port *port)
{
 down_write(&nvmet_config_sem);
 if (list_empty(&port->entry)) {
  list_add_tail(&port->entry, &parent->referrals);
  port->enabled = 1;
  nvmet_port_disc_changed(parent, ((void*)0));
 }
 up_write(&nvmet_config_sem);
}
