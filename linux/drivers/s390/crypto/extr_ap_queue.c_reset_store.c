
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_queue {int qid; int lock; int state; } ;
typedef size_t ssize_t ;


 int AP_DBF (int ,char*,int ,int ) ;
 int AP_EVENT_POLL ;
 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int AP_STATE_RESET_START ;
 int DBF_INFO ;
 int __ap_flush_queue (struct ap_queue*) ;
 int ap_sm_event (struct ap_queue*,int ) ;
 int ap_wait (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct ap_queue *aq = to_ap_queue(dev);

 spin_lock_bh(&aq->lock);
 __ap_flush_queue(aq);
 aq->state = AP_STATE_RESET_START;
 ap_wait(ap_sm_event(aq, AP_EVENT_POLL));
 spin_unlock_bh(&aq->lock);

 AP_DBF(DBF_INFO, "reset queue=%02x.%04x triggered by user\n",
        AP_QID_CARD(aq->qid), AP_QID_QUEUE(aq->qid));

 return count;
}
