
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int dummy; } ;
struct rt_dot11d_info {int state; } ;





 struct rt_dot11d_info* GET_DOT11D_INFO (struct rtllib_device*) ;
 int dot11d_reset (struct rtllib_device*) ;

void dot11d_scan_complete(struct rtllib_device *dev)
{
 struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);

 switch (dot11d_info->state) {
 case 129:
  dot11d_info->state = 130;
  break;
 case 130:
  dot11d_reset(dev);
  break;
 case 128:
  break;
 }
}
