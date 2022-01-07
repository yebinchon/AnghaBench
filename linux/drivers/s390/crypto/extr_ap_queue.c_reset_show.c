
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_queue {int state; int lock; } ;
typedef int ssize_t ;






 int PAGE_SIZE ;
 int snprintf (char*,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static ssize_t reset_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct ap_queue *aq = to_ap_queue(dev);
 int rc = 0;

 spin_lock_bh(&aq->lock);
 switch (aq->state) {
 case 130:
 case 129:
  rc = snprintf(buf, PAGE_SIZE, "Reset in progress.\n");
  break;
 case 128:
 case 131:
  rc = snprintf(buf, PAGE_SIZE, "Reset Timer armed.\n");
  break;
 default:
  rc = snprintf(buf, PAGE_SIZE, "No Reset Timer set.\n");
 }
 spin_unlock_bh(&aq->lock);
 return rc;
}
