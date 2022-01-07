
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct knav_queue {TYPE_2__* stats; TYPE_1__* reg_push; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int pushes; } ;
struct TYPE_3__ {int ptr_size_thresh; } ;


 int this_cpu_inc (int ) ;
 int writel_relaxed (unsigned int,int *) ;

int knav_queue_push(void *qhandle, dma_addr_t dma,
     unsigned size, unsigned flags)
{
 struct knav_queue *qh = qhandle;
 u32 val;

 val = (u32)dma | ((size / 16) - 1);
 writel_relaxed(val, &qh->reg_push[0].ptr_size_thresh);

 this_cpu_inc(qh->stats->pushes);
 return 0;
}
