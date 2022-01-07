
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int of_device_get_modalias (struct device*,char*,int) ;

ssize_t of_device_modalias(struct device *dev, char *str, ssize_t len)
{
 ssize_t sl = of_device_get_modalias(dev, str, len - 2);
 if (sl < 0)
  return sl;
 if (sl > len - 2)
  return -ENOMEM;

 str[sl++] = '\n';
 str[sl] = 0;
 return sl;
}
