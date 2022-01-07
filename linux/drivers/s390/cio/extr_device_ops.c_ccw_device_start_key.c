
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dummy; } ;
struct ccw1 {int dummy; } ;
typedef int __u8 ;


 int ccw_device_start_timeout_key (struct ccw_device*,struct ccw1*,unsigned long,int ,int ,unsigned long,int ) ;

int ccw_device_start_key(struct ccw_device *cdev, struct ccw1 *cpa,
    unsigned long intparm, __u8 lpm, __u8 key,
    unsigned long flags)
{
 return ccw_device_start_timeout_key(cdev, cpa, intparm, lpm, key,
         flags, 0);
}
