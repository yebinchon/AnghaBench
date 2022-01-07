
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DPRINTK (char*) ;

int xenbus_dev_cancel(struct device *dev)
{

 DPRINTK("cancel");
 return 0;
}
