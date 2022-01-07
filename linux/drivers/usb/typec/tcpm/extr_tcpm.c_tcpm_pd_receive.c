
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int wq; } ;
struct pd_rx_event {int work; int msg; struct tcpm_port* port; } ;
struct pd_message {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct pd_rx_event* kzalloc (int,int ) ;
 int memcpy (int *,struct pd_message const*,int) ;
 int queue_work (int ,int *) ;
 int tcpm_pd_rx_handler ;

void tcpm_pd_receive(struct tcpm_port *port, const struct pd_message *msg)
{
 struct pd_rx_event *event;

 event = kzalloc(sizeof(*event), GFP_ATOMIC);
 if (!event)
  return;

 INIT_WORK(&event->work, tcpm_pd_rx_handler);
 event->port = port;
 memcpy(&event->msg, msg, sizeof(*msg));
 queue_work(port->wq, &event->work);
}
