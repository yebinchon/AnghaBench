
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op_curr; int out_volt; int active; int supported; } ;
struct tcpm_port {scalar_t__ state; int pps_status; int pps_pending; int swap_lock; int lock; int pps_complete; int current_limit; TYPE_1__ pps_data; int supply_voltage; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int PD_PPS_CTRL_TIMEOUT ;
 int SNK_NEGOTIATE_CAPABILITIES ;
 int SNK_NEGOTIATE_PPS_CAPABILITIES ;
 scalar_t__ SNK_READY ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tcpm_pps_activate(struct tcpm_port *port, bool activate)
{
 int ret = 0;

 mutex_lock(&port->swap_lock);
 mutex_lock(&port->lock);

 if (!port->pps_data.supported) {
  ret = -EOPNOTSUPP;
  goto port_unlock;
 }


 if (!port->pps_data.active && !activate)
  goto port_unlock;

 if (port->state != SNK_READY) {
  ret = -EAGAIN;
  goto port_unlock;
 }

 reinit_completion(&port->pps_complete);
 port->pps_status = 0;
 port->pps_pending = 1;


 if (activate) {
  port->pps_data.out_volt = port->supply_voltage;
  port->pps_data.op_curr = port->current_limit;
  tcpm_set_state(port, SNK_NEGOTIATE_PPS_CAPABILITIES, 0);
 } else {
  tcpm_set_state(port, SNK_NEGOTIATE_CAPABILITIES, 0);
 }
 mutex_unlock(&port->lock);

 if (!wait_for_completion_timeout(&port->pps_complete,
    msecs_to_jiffies(PD_PPS_CTRL_TIMEOUT)))
  ret = -ETIMEDOUT;
 else
  ret = port->pps_status;

 goto swap_unlock;

port_unlock:
 mutex_unlock(&port->lock);
swap_unlock:
 mutex_unlock(&port->swap_lock);

 return ret;
}
