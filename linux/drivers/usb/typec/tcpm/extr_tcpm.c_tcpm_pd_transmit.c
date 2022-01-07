
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int tx_status; int message_id; int lock; int tx_complete; TYPE_1__* tcpc; } ;
struct pd_message {int header; } ;
typedef enum tcpm_transmit_type { ____Placeholder_tcpm_transmit_type } tcpm_transmit_type ;
struct TYPE_2__ {int (* pd_transmit ) (TYPE_1__*,int,struct pd_message const*) ;} ;


 int EAGAIN ;
 int EIO ;
 int ETIMEDOUT ;
 int PD_HEADER_ID_MASK ;
 int PD_T_TCPC_TX_TIMEOUT ;



 int le16_to_cpu (int ) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int stub1 (TYPE_1__*,int,struct pd_message const*) ;
 int tcpm_log (struct tcpm_port*,char*,int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tcpm_pd_transmit(struct tcpm_port *port,
       enum tcpm_transmit_type type,
       const struct pd_message *msg)
{
 unsigned long timeout;
 int ret;

 if (msg)
  tcpm_log(port, "PD TX, header: %#x", le16_to_cpu(msg->header));
 else
  tcpm_log(port, "PD TX, type: %#x", type);

 reinit_completion(&port->tx_complete);
 ret = port->tcpc->pd_transmit(port->tcpc, type, msg);
 if (ret < 0)
  return ret;

 mutex_unlock(&port->lock);
 timeout = wait_for_completion_timeout(&port->tx_complete,
    msecs_to_jiffies(PD_T_TCPC_TX_TIMEOUT));
 mutex_lock(&port->lock);
 if (!timeout)
  return -ETIMEDOUT;

 switch (port->tx_status) {
 case 128:
  port->message_id = (port->message_id + 1) & PD_HEADER_ID_MASK;
  return 0;
 case 130:
  return -EAGAIN;
 case 129:
 default:
  return -EIO;
 }
}
