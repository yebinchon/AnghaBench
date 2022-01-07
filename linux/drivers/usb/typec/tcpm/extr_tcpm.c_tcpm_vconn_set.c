
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_capability {int dummy; } ;
struct tcpm_port {scalar_t__ state; int vconn_role; int swap_status; int swap_pending; int swap_lock; int lock; int swap_complete; } ;
typedef enum typec_role { ____Placeholder_typec_role } typec_role ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int PD_ROLE_SWAP_TIMEOUT ;
 scalar_t__ SNK_READY ;
 scalar_t__ SRC_READY ;
 int VCONN_SWAP_SEND ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 struct tcpm_port* typec_cap_to_tcpm (struct typec_capability const*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tcpm_vconn_set(const struct typec_capability *cap,
     enum typec_role role)
{
 struct tcpm_port *port = typec_cap_to_tcpm(cap);
 int ret;

 mutex_lock(&port->swap_lock);
 mutex_lock(&port->lock);

 if (port->state != SRC_READY && port->state != SNK_READY) {
  ret = -EAGAIN;
  goto port_unlock;
 }

 if (role == port->vconn_role) {
  ret = 0;
  goto port_unlock;
 }

 port->swap_status = 0;
 port->swap_pending = 1;
 reinit_completion(&port->swap_complete);
 tcpm_set_state(port, VCONN_SWAP_SEND, 0);
 mutex_unlock(&port->lock);

 if (!wait_for_completion_timeout(&port->swap_complete,
    msecs_to_jiffies(PD_ROLE_SWAP_TIMEOUT)))
  ret = -ETIMEDOUT;
 else
  ret = port->swap_status;

 goto swap_unlock;

port_unlock:
 mutex_unlock(&port->lock);
swap_unlock:
 mutex_unlock(&port->swap_lock);
 return ret;
}
