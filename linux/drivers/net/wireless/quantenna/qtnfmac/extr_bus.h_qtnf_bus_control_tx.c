
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct qtnf_bus {TYPE_1__* bus_ops; } ;
struct TYPE_2__ {int (* control_tx ) (struct qtnf_bus*,struct sk_buff*) ;} ;


 int stub1 (struct qtnf_bus*,struct sk_buff*) ;

__attribute__((used)) static inline int qtnf_bus_control_tx(struct qtnf_bus *bus, struct sk_buff *skb)
{
 return bus->bus_ops->control_tx(bus, skb);
}
