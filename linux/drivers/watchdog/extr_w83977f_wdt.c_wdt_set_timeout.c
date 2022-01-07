
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int timeout ;
 int timeoutW ;

__attribute__((used)) static int wdt_set_timeout(int t)
{
 unsigned int tmrval;
 if (t < 15)
  return -EINVAL;

 tmrval = ((t + 15) + 29) / 30;

 if (tmrval > 255)
  return -EINVAL;





 timeoutW = tmrval;
 timeout = (timeoutW * 30) - 15;
 return 0;
}
