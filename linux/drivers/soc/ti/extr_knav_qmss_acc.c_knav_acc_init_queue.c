
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct knav_range_info {unsigned int queue_base; unsigned int acc; int flags; TYPE_1__* kdev; } ;
struct knav_queue_inst {unsigned int id; unsigned int acc; int descs; } ;
struct TYPE_2__ {int dev; } ;


 int ACC_DESCS_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RANGE_MULTI_QUEUE ;
 int devm_kcalloc (int ,int ,int,int ) ;

__attribute__((used)) static int knav_acc_init_queue(struct knav_range_info *range,
    struct knav_queue_inst *kq)
{
 unsigned id = kq->id - range->queue_base;

 kq->descs = devm_kcalloc(range->kdev->dev,
     ACC_DESCS_MAX, sizeof(u32), GFP_KERNEL);
 if (!kq->descs)
  return -ENOMEM;

 kq->acc = range->acc;
 if ((range->flags & RANGE_MULTI_QUEUE) == 0)
  kq->acc += id;
 return 0;
}
