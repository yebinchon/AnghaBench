
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_lport {int state; int lp_mutex; } ;




 int fc_lport_enter_ready (struct fc_lport*) ;
 int fc_lport_set_port_id (struct fc_lport*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fc_lport_set_local_id(struct fc_lport *lport, u32 port_id)
{
 mutex_lock(&lport->lp_mutex);

 fc_lport_set_port_id(lport, port_id, ((void*)0));

 switch (lport->state) {
 case 128:
 case 129:
  if (port_id)
   fc_lport_enter_ready(lport);
  break;
 default:
  break;
 }
 mutex_unlock(&lport->lp_mutex);
}
