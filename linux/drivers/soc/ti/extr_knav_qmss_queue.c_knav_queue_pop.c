
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct knav_queue_inst {size_t* descs; int desc_head; int desc_count; } ;
struct knav_queue {TYPE_2__* stats; TYPE_1__* reg_pop; struct knav_queue_inst* inst; } ;
typedef size_t dma_addr_t ;
struct TYPE_4__ {int pops; } ;
struct TYPE_3__ {int ptr_size_thresh; } ;


 size_t ACC_DESCS_MASK ;
 size_t DESC_PTR_MASK ;
 size_t DESC_SIZE_MASK ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc (int *) ;
 size_t atomic_inc_return (int *) ;
 size_t readl_relaxed (int *) ;
 int this_cpu_inc (int ) ;
 scalar_t__ unlikely (int) ;

dma_addr_t knav_queue_pop(void *qhandle, unsigned *size)
{
 struct knav_queue *qh = qhandle;
 struct knav_queue_inst *inst = qh->inst;
 dma_addr_t dma;
 u32 val, idx;


 if (inst->descs) {
  if (unlikely(atomic_dec_return(&inst->desc_count) < 0)) {
   atomic_inc(&inst->desc_count);
   return 0;
  }
  idx = atomic_inc_return(&inst->desc_head);
  idx &= ACC_DESCS_MASK;
  val = inst->descs[idx];
 } else {
  val = readl_relaxed(&qh->reg_pop[0].ptr_size_thresh);
  if (unlikely(!val))
   return 0;
 }

 dma = val & DESC_PTR_MASK;
 if (size)
  *size = ((val & DESC_SIZE_MASK) + 1) * 16;

 this_cpu_inc(qh->stats->pops);
 return dma;
}
