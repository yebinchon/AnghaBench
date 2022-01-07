
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_queue {int lock; scalar_t__ total_request_count; } ;
typedef size_t ssize_t ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static ssize_t request_count_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct ap_queue *aq = to_ap_queue(dev);

 spin_lock_bh(&aq->lock);
 aq->total_request_count = 0;
 spin_unlock_bh(&aq->lock);

 return count;
}
