
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_hisi_host {int ufs_sys_ctrl; TYPE_1__* hba; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int ufs_hisi_get_resource(struct ufs_hisi_host *host)
{
 struct device *dev = host->hba->dev;
 struct platform_device *pdev = to_platform_device(dev);


 host->ufs_sys_ctrl = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(host->ufs_sys_ctrl))
  return PTR_ERR(host->ufs_sys_ctrl);

 return 0;
}
