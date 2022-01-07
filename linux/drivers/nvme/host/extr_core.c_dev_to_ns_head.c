
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_ns_head {int dummy; } ;
struct gendisk {struct nvme_ns_head* private_data; int * fops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct nvme_ns_head* head; } ;


 struct gendisk* dev_to_disk (struct device*) ;
 int nvme_fops ;
 TYPE_1__* nvme_get_ns_from_dev (struct device*) ;

__attribute__((used)) static inline struct nvme_ns_head *dev_to_ns_head(struct device *dev)
{
 struct gendisk *disk = dev_to_disk(dev);

 if (disk->fops == &nvme_fops)
  return nvme_get_ns_from_dev(dev)->head;
 else
  return disk->private_data;
}
