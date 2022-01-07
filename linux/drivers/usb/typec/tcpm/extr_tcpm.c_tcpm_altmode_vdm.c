
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct typec_altmode {int dummy; } ;
struct tcpm_port {int lock; int vdm_state_machine; int wq; } ;


 int mod_delayed_work (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcpm_queue_vdm (struct tcpm_port*,int ,int const*,int) ;
 struct tcpm_port* typec_altmode_get_drvdata (struct typec_altmode*) ;

__attribute__((used)) static int tcpm_altmode_vdm(struct typec_altmode *altmode,
       u32 header, const u32 *data, int count)
{
 struct tcpm_port *port = typec_altmode_get_drvdata(altmode);

 mutex_lock(&port->lock);
 tcpm_queue_vdm(port, header, data, count - 1);
 mod_delayed_work(port->wq, &port->vdm_state_machine, 0);
 mutex_unlock(&port->lock);

 return 0;
}
