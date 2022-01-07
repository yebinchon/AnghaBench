
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct ap_device {TYPE_1__* drv; } ;
struct TYPE_2__ {int (* resume ) (struct ap_device*) ;} ;


 int stub1 (struct ap_device*) ;
 struct ap_device* to_ap_dev (struct device*) ;

__attribute__((used)) static int ap_dev_resume(struct device *dev)
{
 struct ap_device *ap_dev = to_ap_dev(dev);

 if (ap_dev->drv && ap_dev->drv->resume)
  ap_dev->drv->resume(ap_dev);
 return 0;
}
