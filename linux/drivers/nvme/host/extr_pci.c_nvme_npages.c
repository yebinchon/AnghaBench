
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int page_size; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;


 int DIV_ROUND_UP (int,unsigned int) ;
 unsigned int PAGE_SIZE ;

__attribute__((used)) static int nvme_npages(unsigned size, struct nvme_dev *dev)
{
 unsigned nprps = DIV_ROUND_UP(size + dev->ctrl.page_size,
          dev->ctrl.page_size);
 return DIV_ROUND_UP(8 * nprps, PAGE_SIZE - 8);
}
