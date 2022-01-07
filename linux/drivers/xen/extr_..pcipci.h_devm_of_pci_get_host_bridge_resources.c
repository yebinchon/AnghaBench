
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 int EINVAL ;

__attribute__((used)) static inline int devm_of_pci_get_host_bridge_resources(struct device *dev,
   unsigned char busno, unsigned char bus_max,
   struct list_head *resources, resource_size_t *io_base)
{
 return -EINVAL;
}
