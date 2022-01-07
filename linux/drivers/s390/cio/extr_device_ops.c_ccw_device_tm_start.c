
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcw {int dummy; } ;
struct ccw_device {int dummy; } ;


 int PAGE_DEFAULT_KEY ;
 int ccw_device_tm_start_key (struct ccw_device*,struct tcw*,unsigned long,int ,int ) ;

int ccw_device_tm_start(struct ccw_device *cdev, struct tcw *tcw,
   unsigned long intparm, u8 lpm)
{
 return ccw_device_tm_start_key(cdev, tcw, intparm, lpm,
           PAGE_DEFAULT_KEY);
}
