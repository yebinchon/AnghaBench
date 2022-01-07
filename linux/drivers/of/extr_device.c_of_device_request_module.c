
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int of_device_get_modalias (struct device*,char*,int) ;
 int request_module (char*) ;

int of_device_request_module(struct device *dev)
{
 char *str;
 ssize_t size;
 int ret;

 size = of_device_get_modalias(dev, ((void*)0), 0);
 if (size < 0)
  return size;

 str = kmalloc(size + 1, GFP_KERNEL);
 if (!str)
  return -ENOMEM;

 of_device_get_modalias(dev, str, size);
 str[size] = '\0';
 ret = request_module(str);
 kfree(str);

 return ret;
}
