
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t trtype; } ;
struct nvmet_port {int enabled; TYPE_1__ disc_addr; int * tr_ops; } ;
struct nvmet_fabrics_ops {int owner; int (* remove_port ) (struct nvmet_port*) ;} ;


 int lockdep_assert_held (int *) ;
 int module_put (int ) ;
 int nvmet_config_sem ;
 struct nvmet_fabrics_ops** nvmet_transports ;
 int stub1 (struct nvmet_port*) ;

void nvmet_disable_port(struct nvmet_port *port)
{
 const struct nvmet_fabrics_ops *ops;

 lockdep_assert_held(&nvmet_config_sem);

 port->enabled = 0;
 port->tr_ops = ((void*)0);

 ops = nvmet_transports[port->disc_addr.trtype];
 ops->remove_port(port);
 module_put(ops->owner);
}
