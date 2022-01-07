
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct typec_altmode {int mode; int svid; } ;
struct tcpm_port {int lock; int vdm_state_machine; int wq; } ;


 int CMD_ENTER_MODE ;
 int VDO (int ,int,int ) ;
 int VDO_OPOS (int ) ;
 int mod_delayed_work (int ,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcpm_queue_vdm (struct tcpm_port*,int ,int *,int ) ;
 struct tcpm_port* typec_altmode_get_drvdata (struct typec_altmode*) ;

__attribute__((used)) static int tcpm_altmode_enter(struct typec_altmode *altmode)
{
 struct tcpm_port *port = typec_altmode_get_drvdata(altmode);
 u32 header;

 mutex_lock(&port->lock);
 header = VDO(altmode->svid, 1, CMD_ENTER_MODE);
 header |= VDO_OPOS(altmode->mode);

 tcpm_queue_vdm(port, header, ((void*)0), 0);
 mod_delayed_work(port->wq, &port->vdm_state_machine, 0);
 mutex_unlock(&port->lock);

 return 0;
}
