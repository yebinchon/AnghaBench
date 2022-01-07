
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_queue {unsigned int pendingq_count; int lock; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static ssize_t pendingq_count_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct ap_queue *aq = to_ap_queue(dev);
 unsigned int penq_cnt = 0;

 spin_lock_bh(&aq->lock);
 penq_cnt = aq->pendingq_count;
 spin_unlock_bh(&aq->lock);
 return snprintf(buf, PAGE_SIZE, "%d\n", penq_cnt);
}
