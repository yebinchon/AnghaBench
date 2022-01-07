
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ap_card {int total_request_count; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int ap_list_lock ;
 unsigned int atomic_read (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_card* to_ap_card (struct device*) ;

__attribute__((used)) static ssize_t request_count_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct ap_card *ac = to_ap_card(dev);
 unsigned int req_cnt;

 req_cnt = 0;
 spin_lock_bh(&ap_list_lock);
 req_cnt = atomic_read(&ac->total_request_count);
 spin_unlock_bh(&ap_list_lock);
 return snprintf(buf, PAGE_SIZE, "%d\n", req_cnt);
}
