
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_dev {int num_vecs; } ;



__attribute__((used)) static int queue_irq_offset(struct nvme_dev *dev)
{

 if (dev->num_vecs > 1)
  return 1;

 return 0;
}
