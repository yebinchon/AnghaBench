
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_ass_rs; int no_auth_rs; } ;
struct rtllib_device {scalar_t__ state; int lock; int associate_retry_wq; TYPE_1__ softmac_stats; int dev; int associate_seq; } ;


 scalar_t__ RTLLIB_ASSOCIATING_AUTHENTICATING ;
 scalar_t__ RTLLIB_ASSOCIATING_RETRY ;
 int RTLLIB_SOFTMAC_ASSOC_RETRY_TIME ;
 int netdev_dbg (int ,char*) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtllib_associate_abort(struct rtllib_device *ieee)
{
 unsigned long flags;

 spin_lock_irqsave(&ieee->lock, flags);

 ieee->associate_seq++;







 if (ieee->state == RTLLIB_ASSOCIATING_AUTHENTICATING) {
  netdev_dbg(ieee->dev, "Authentication failed\n");
  ieee->softmac_stats.no_auth_rs++;
 } else {
  netdev_dbg(ieee->dev, "Association failed\n");
  ieee->softmac_stats.no_ass_rs++;
 }

 ieee->state = RTLLIB_ASSOCIATING_RETRY;

 schedule_delayed_work(&ieee->associate_retry_wq,
         RTLLIB_SOFTMAC_ASSOC_RETRY_TIME);

 spin_unlock_irqrestore(&ieee->lock, flags);
}
