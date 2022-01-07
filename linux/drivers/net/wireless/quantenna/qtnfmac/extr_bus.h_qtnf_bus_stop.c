
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qtnf_bus {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* stop ) (struct qtnf_bus*) ;} ;


 int stub1 (struct qtnf_bus*) ;

__attribute__((used)) static inline void qtnf_bus_stop(struct qtnf_bus *bus)
{
 if (!bus->bus_ops->stop)
  return;
 bus->bus_ops->stop(bus);
}
