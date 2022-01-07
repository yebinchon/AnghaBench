
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {struct knav_pdsp_info* pdsp; } ;
struct knav_range_info {struct knav_device* kdev; TYPE_1__ acc_info; } ;
struct knav_queue_inst {int notify_needed; TYPE_2__* acc; int desc_count; } ;
struct knav_pdsp_info {scalar_t__ intd; } ;
struct knav_device {int dev; } ;
struct TYPE_4__ {int channel; int name; int retrigger_count; } ;


 scalar_t__ ACC_INTD_OFFSET_STATUS (int) ;
 scalar_t__ BIT (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static int knav_acc_set_notify(struct knav_range_info *range,
    struct knav_queue_inst *kq,
    bool enabled)
{
 struct knav_pdsp_info *pdsp = range->acc_info.pdsp;
 struct knav_device *kdev = range->kdev;
 u32 mask, offset;





 if (!enabled || atomic_read(&kq->desc_count) <= 0)
  return 0;

 kq->notify_needed = 1;
 atomic_inc(&kq->acc->retrigger_count);
 mask = BIT(kq->acc->channel % 32);
 offset = ACC_INTD_OFFSET_STATUS(kq->acc->channel);
 dev_dbg(kdev->dev, "setup-notify: re-triggering irq for %s\n",
  kq->acc->name);
 writel_relaxed(mask, pdsp->intd + offset);
 return 0;
}
