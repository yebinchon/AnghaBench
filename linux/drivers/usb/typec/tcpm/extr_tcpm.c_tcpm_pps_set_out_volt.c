
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int min_volt; int max_volt; int op_curr; int out_volt; int active; } ;
struct tcpm_port {scalar_t__ state; unsigned int operating_snk_mw; int pps_status; int pps_pending; int swap_lock; int lock; int pps_complete; TYPE_1__ pps_data; } ;


 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int PD_PPS_CTRL_TIMEOUT ;
 int RDO_PROG_VOLT_MV_STEP ;
 int SNK_NEGOTIATE_PPS_CAPABILITIES ;
 scalar_t__ SNK_READY ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tcpm_pps_set_out_volt(struct tcpm_port *port, u16 out_volt)
{
 unsigned int target_mw;
 int ret;

 mutex_lock(&port->swap_lock);
 mutex_lock(&port->lock);

 if (!port->pps_data.active) {
  ret = -EOPNOTSUPP;
  goto port_unlock;
 }

 if (port->state != SNK_READY) {
  ret = -EAGAIN;
  goto port_unlock;
 }

 if (out_volt < port->pps_data.min_volt ||
     out_volt > port->pps_data.max_volt) {
  ret = -EINVAL;
  goto port_unlock;
 }

 target_mw = (port->pps_data.op_curr * out_volt) / 1000;
 if (target_mw < port->operating_snk_mw) {
  ret = -EINVAL;
  goto port_unlock;
 }


 out_volt = out_volt - (out_volt % RDO_PROG_VOLT_MV_STEP);

 reinit_completion(&port->pps_complete);
 port->pps_data.out_volt = out_volt;
 port->pps_status = 0;
 port->pps_pending = 1;
 tcpm_set_state(port, SNK_NEGOTIATE_PPS_CAPABILITIES, 0);
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
