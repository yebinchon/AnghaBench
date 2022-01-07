
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct amd5536udc {int dummy; } ;


 struct amd5536udc* dev_get_drvdata (struct device*) ;
 int kfree (struct amd5536udc*) ;

void gadget_release(struct device *pdev)
{
 struct amd5536udc *dev = dev_get_drvdata(pdev);
 kfree(dev);
}
