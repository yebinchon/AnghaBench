
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_queue {scalar_t__ state; scalar_t__ interrupt; int lock; } ;
typedef int ssize_t ;


 scalar_t__ AP_INTR_ENABLED ;
 scalar_t__ AP_STATE_SETIRQ_WAIT ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static ssize_t interrupt_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct ap_queue *aq = to_ap_queue(dev);
 int rc = 0;

 spin_lock_bh(&aq->lock);
 if (aq->state == AP_STATE_SETIRQ_WAIT)
  rc = snprintf(buf, PAGE_SIZE, "Enable Interrupt pending.\n");
 else if (aq->interrupt == AP_INTR_ENABLED)
  rc = snprintf(buf, PAGE_SIZE, "Interrupts enabled.\n");
 else
  rc = snprintf(buf, PAGE_SIZE, "Interrupts disabled.\n");
 spin_unlock_bh(&aq->lock);
 return rc;
}
