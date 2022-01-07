
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_serial {TYPE_1__** ports; } ;
struct TYPE_2__ {int index; } ;


 int EBUSY ;
 int MAX_TOTAL_PORTS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_ports ;
 TYPE_1__** port_table ;
 scalar_t__ port_table_corrupt ;
 int port_table_lock ;

__attribute__((used)) static int fwtty_ports_add(struct fw_serial *serial)
{
 int err = -EBUSY;
 int i, j;

 if (port_table_corrupt)
  return err;

 mutex_lock(&port_table_lock);
 for (i = 0; i + num_ports <= MAX_TOTAL_PORTS; i += num_ports) {
  if (!port_table[i]) {
   for (j = 0; j < num_ports; ++i, ++j) {
    serial->ports[j]->index = i;
    port_table[i] = serial->ports[j];
   }
   err = 0;
   break;
  }
 }
 mutex_unlock(&port_table_lock);
 return err;
}
