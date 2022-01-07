
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_2__ {int page_size; } ;
struct nvme_dev {int q_depth; unsigned int cmb_size; TYPE_1__ ctrl; } ;


 int ENOMEM ;
 void* div_u64 (unsigned int,int) ;
 unsigned int round_down (unsigned int,int ) ;
 unsigned int roundup (int,int ) ;

__attribute__((used)) static int nvme_cmb_qdepth(struct nvme_dev *dev, int nr_io_queues,
    int entry_size)
{
 int q_depth = dev->q_depth;
 unsigned q_size_aligned = roundup(q_depth * entry_size,
       dev->ctrl.page_size);

 if (q_size_aligned * nr_io_queues > dev->cmb_size) {
  u64 mem_per_q = div_u64(dev->cmb_size, nr_io_queues);
  mem_per_q = round_down(mem_per_q, dev->ctrl.page_size);
  q_depth = div_u64(mem_per_q, entry_size);






  if (q_depth < 64)
   return -ENOMEM;
 }

 return q_depth;
}
