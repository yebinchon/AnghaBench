
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child (struct device*,void*,int ) ;
 int nd_pmem_forget_poison_check ;

__attribute__((used)) static int nd_ns_forget_poison_check(struct device *dev, void *data)
{
 return device_for_each_child(dev, data, nd_pmem_forget_poison_check);
}
