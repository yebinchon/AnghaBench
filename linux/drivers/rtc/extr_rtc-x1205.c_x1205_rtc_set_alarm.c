
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int enabled; int time; } ;
struct device {int dummy; } ;


 int X1205_ALM0_BASE ;
 int to_i2c_client (struct device*) ;
 int x1205_set_datetime (int ,int *,int ,int ) ;

__attribute__((used)) static int x1205_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 return x1205_set_datetime(to_i2c_client(dev),
  &alrm->time, X1205_ALM0_BASE, alrm->enabled);
}
