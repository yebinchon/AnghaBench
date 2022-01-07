
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int
of_pci_parse_bus_range(struct device_node *node, struct resource *res)
{
 return -EINVAL;
}
