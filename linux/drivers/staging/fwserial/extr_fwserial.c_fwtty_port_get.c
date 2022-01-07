
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_port {TYPE_1__* serial; } ;
struct TYPE_2__ {int kref; } ;


 unsigned int MAX_TOTAL_PORTS ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fwtty_port** port_table ;
 int port_table_lock ;

__attribute__((used)) static struct fwtty_port *fwtty_port_get(unsigned int index)
{
 struct fwtty_port *port;

 if (index >= MAX_TOTAL_PORTS)
  return ((void*)0);

 mutex_lock(&port_table_lock);
 port = port_table[index];
 if (port)
  kref_get(&port->serial->kref);
 mutex_unlock(&port_table_lock);
 return port;
}
