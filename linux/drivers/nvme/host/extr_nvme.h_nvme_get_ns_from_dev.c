
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct nvme_ns* private_data; } ;


 TYPE_1__* dev_to_disk (struct device*) ;

__attribute__((used)) static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
{
 return dev_to_disk(dev)->private_data;
}
