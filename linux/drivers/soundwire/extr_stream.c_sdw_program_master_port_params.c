
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdw_port_runtime {int port_params; int transport_params; } ;
struct TYPE_4__ {int next_bank; } ;
struct sdw_bus {TYPE_2__ params; TYPE_1__* port_ops; } ;
struct TYPE_3__ {int (* dpn_set_port_transport_params ) (struct sdw_bus*,int *,int ) ;int (* dpn_set_port_params ) (struct sdw_bus*,int *,int ) ;} ;


 int stub1 (struct sdw_bus*,int *,int ) ;
 int stub2 (struct sdw_bus*,int *,int ) ;

__attribute__((used)) static int sdw_program_master_port_params(struct sdw_bus *bus,
       struct sdw_port_runtime *p_rt)
{
 int ret;







 ret = bus->port_ops->dpn_set_port_transport_params(bus,
     &p_rt->transport_params,
     bus->params.next_bank);
 if (ret < 0)
  return ret;

 return bus->port_ops->dpn_set_port_params(bus,
        &p_rt->port_params,
        bus->params.next_bank);
}
