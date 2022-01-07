
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_device {int hcd; } ;
struct device {int dummy; } ;


 struct isp1760_device* dev_get_drvdata (struct device*) ;
 int isp1760_hcd_unregister (int *) ;
 int isp1760_udc_unregister (struct isp1760_device*) ;

void isp1760_unregister(struct device *dev)
{
 struct isp1760_device *isp = dev_get_drvdata(dev);

 isp1760_udc_unregister(isp);
 isp1760_hcd_unregister(&isp->hcd);
}
