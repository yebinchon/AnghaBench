
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_capability {int dummy; } ;
struct tcpm_port {scalar_t__ port_type; scalar_t__ state; int data_role; scalar_t__ try_role; scalar_t__ pwr_role; int non_pd_role_swap; int swap_status; int swap_pending; int swap_lock; int lock; int swap_complete; int pd_capable; } ;
typedef enum typec_data_role { ____Placeholder_typec_data_role } typec_data_role ;


 int DR_SWAP_SEND ;
 int EAGAIN ;
 int EINVAL ;
 int ETIMEDOUT ;
 int PD_ROLE_SWAP_TIMEOUT ;
 int PORT_RESET ;
 scalar_t__ SNK_READY ;
 scalar_t__ SRC_READY ;
 scalar_t__ TYPEC_NO_PREFERRED_ROLE ;
 scalar_t__ TYPEC_PORT_DRP ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 struct tcpm_port* typec_cap_to_tcpm (struct typec_capability const*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tcpm_dr_set(const struct typec_capability *cap,
         enum typec_data_role data)
{
 struct tcpm_port *port = typec_cap_to_tcpm(cap);
 int ret;

 mutex_lock(&port->swap_lock);
 mutex_lock(&port->lock);

 if (port->port_type != TYPEC_PORT_DRP) {
  ret = -EINVAL;
  goto port_unlock;
 }
 if (port->state != SRC_READY && port->state != SNK_READY) {
  ret = -EAGAIN;
  goto port_unlock;
 }

 if (port->data_role == data) {
  ret = 0;
  goto port_unlock;
 }
 if (!port->pd_capable) {





  if (port->try_role == TYPEC_NO_PREFERRED_ROLE ||
      port->try_role == port->pwr_role) {
   ret = -EINVAL;
   goto port_unlock;
  }
  port->non_pd_role_swap = 1;
  tcpm_set_state(port, PORT_RESET, 0);
 } else {
  tcpm_set_state(port, DR_SWAP_SEND, 0);
 }

 port->swap_status = 0;
 port->swap_pending = 1;
 reinit_completion(&port->swap_complete);
 mutex_unlock(&port->lock);

 if (!wait_for_completion_timeout(&port->swap_complete,
    msecs_to_jiffies(PD_ROLE_SWAP_TIMEOUT)))
  ret = -ETIMEDOUT;
 else
  ret = port->swap_status;

 port->non_pd_role_swap = 0;
 goto swap_unlock;

port_unlock:
 mutex_unlock(&port->lock);
swap_unlock:
 mutex_unlock(&port->swap_lock);
 return ret;
}
