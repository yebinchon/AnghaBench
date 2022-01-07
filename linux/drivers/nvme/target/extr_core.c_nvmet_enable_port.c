
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t trtype; } ;
struct nvmet_port {scalar_t__ inline_data_size; int enabled; struct nvmet_fabrics_ops const* tr_ops; TYPE_1__ disc_addr; } ;
struct nvmet_fabrics_ops {int (* add_port ) (struct nvmet_port*) ;int owner; } ;


 int EINVAL ;
 int down_write (int *) ;
 int lockdep_assert_held (int *) ;
 int module_put (int ) ;
 int nvmet_config_sem ;
 struct nvmet_fabrics_ops** nvmet_transports ;
 int pr_err (char*,size_t) ;
 int request_module (char*,size_t) ;
 int stub1 (struct nvmet_port*) ;
 int try_module_get (int ) ;
 int up_write (int *) ;

int nvmet_enable_port(struct nvmet_port *port)
{
 const struct nvmet_fabrics_ops *ops;
 int ret;

 lockdep_assert_held(&nvmet_config_sem);

 ops = nvmet_transports[port->disc_addr.trtype];
 if (!ops) {
  up_write(&nvmet_config_sem);
  request_module("nvmet-transport-%d", port->disc_addr.trtype);
  down_write(&nvmet_config_sem);
  ops = nvmet_transports[port->disc_addr.trtype];
  if (!ops) {
   pr_err("transport type %d not supported\n",
    port->disc_addr.trtype);
   return -EINVAL;
  }
 }

 if (!try_module_get(ops->owner))
  return -EINVAL;

 ret = ops->add_port(port);
 if (ret) {
  module_put(ops->owner);
  return ret;
 }


 if (port->inline_data_size < 0)
  port->inline_data_size = 0;

 port->enabled = 1;
 port->tr_ops = ops;
 return 0;
}
