
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct platform_device* pdev; } ;


 TYPE_1__ sdi ;
 int sdi_init_output (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int sdi_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);

 sdi.pdev = pdev;

 sdi_init_output(pdev);

 return 0;
}
