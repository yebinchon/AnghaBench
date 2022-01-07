
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport {struct parport* name; TYPE_1__* probe_info; int full_list; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct parport* description; struct parport* cmdset; struct parport* model; struct parport* mfr; struct parport* class_name; } ;


 int full_list_lock ;
 int kfree (struct parport*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct parport* to_parport_dev (struct device*) ;

__attribute__((used)) static void free_port(struct device *dev)
{
 int d;
 struct parport *port = to_parport_dev(dev);

 spin_lock(&full_list_lock);
 list_del(&port->full_list);
 spin_unlock(&full_list_lock);
 for (d = 0; d < 5; d++) {
  kfree(port->probe_info[d].class_name);
  kfree(port->probe_info[d].mfr);
  kfree(port->probe_info[d].model);
  kfree(port->probe_info[d].cmdset);
  kfree(port->probe_info[d].description);
 }

 kfree(port->name);
 kfree(port);
}
