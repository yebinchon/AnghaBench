
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int dummy; } ;
struct fwtty_port {int index; int port; int rx_handler; struct fwtty_port** ports; } ;
struct fw_serial {int index; int port; int rx_handler; struct fw_serial** ports; } ;


 int WARN_ONCE (int,char*,int,struct fwtty_port*,int,struct fwtty_port*) ;
 int fw_core_remove_address_handler (int *) ;
 int kfree (struct fwtty_port*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_ports ;
 struct fwtty_port** port_table ;
 int port_table_corrupt ;
 int port_table_lock ;
 int synchronize_rcu () ;
 struct fwtty_port* to_serial (struct kref*,struct kref*) ;
 int tty_port_destroy (int *) ;

__attribute__((used)) static void fwserial_destroy(struct kref *kref)
{
 struct fw_serial *serial = to_serial(kref, kref);
 struct fwtty_port **ports = serial->ports;
 int j, i = ports[0]->index;

 synchronize_rcu();

 mutex_lock(&port_table_lock);
 for (j = 0; j < num_ports; ++i, ++j) {
  port_table_corrupt |= port_table[i] != ports[j];
  WARN_ONCE(port_table_corrupt, "port_table[%d]: %p != ports[%d]: %p",
     i, port_table[i], j, ports[j]);

  port_table[i] = ((void*)0);
 }
 mutex_unlock(&port_table_lock);

 for (j = 0; j < num_ports; ++j) {
  fw_core_remove_address_handler(&ports[j]->rx_handler);
  tty_port_destroy(&ports[j]->port);
  kfree(ports[j]);
 }
 kfree(serial);
}
