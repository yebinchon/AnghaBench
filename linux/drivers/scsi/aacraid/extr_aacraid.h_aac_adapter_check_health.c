
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* adapter_check_health ) (struct aac_dev*) ;} ;
struct aac_dev {TYPE_1__ a_ops; } ;


 int aac_pci_offline (struct aac_dev*) ;
 int stub1 (struct aac_dev*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int aac_adapter_check_health(struct aac_dev *dev)
{
 if (unlikely(aac_pci_offline(dev)))
  return -1;

 return (dev)->a_ops.adapter_check_health(dev);
}
