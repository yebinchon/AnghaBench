
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;
struct ccw1 {int dummy; } ;
typedef int __u8 ;


 int PAGE_DEFAULT_KEY ;
 int ccw_device_start_timeout_key (struct ccw_device*,struct ccw1*,unsigned long,int ,int ,unsigned long,int) ;

int ccw_device_start_timeout(struct ccw_device *cdev, struct ccw1 *cpa,
        unsigned long intparm, __u8 lpm,
        unsigned long flags, int expires)
{
 return ccw_device_start_timeout_key(cdev, cpa, intparm, lpm,
         PAGE_DEFAULT_KEY, flags,
         expires);
}
