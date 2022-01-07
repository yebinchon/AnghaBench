
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ desc_count; int desc_avail; } ;
struct vnic_wq_copy {scalar_t__ to_use_index; TYPE_2__* ctrl; TYPE_1__ ring; } ;
struct TYPE_4__ {int posted_index; } ;


 int iowrite32 (scalar_t__,int *) ;
 int wmb () ;

__attribute__((used)) static inline void vnic_wq_copy_post(struct vnic_wq_copy *wq)
{

 ((wq->to_use_index + 1) == wq->ring.desc_count) ?
  (wq->to_use_index = 0) : (wq->to_use_index++);
 wq->ring.desc_avail--;






 wmb();

 iowrite32(wq->to_use_index, &wq->ctrl->posted_index);
}
