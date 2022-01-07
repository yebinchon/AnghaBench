
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int event_work; int wq; int pd_event_lock; int pd_events; } ;


 int TCPM_VBUS_EVENT ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void tcpm_vbus_change(struct tcpm_port *port)
{
 spin_lock(&port->pd_event_lock);
 port->pd_events |= TCPM_VBUS_EVENT;
 spin_unlock(&port->pd_event_lock);
 queue_work(port->wq, &port->event_work);
}
