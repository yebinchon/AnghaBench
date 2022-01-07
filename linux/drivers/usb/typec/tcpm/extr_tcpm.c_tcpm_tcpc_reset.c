
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcpm_init (struct tcpm_port*) ;

void tcpm_tcpc_reset(struct tcpm_port *port)
{
 mutex_lock(&port->lock);

 tcpm_init(port);
 mutex_unlock(&port->lock);
}
