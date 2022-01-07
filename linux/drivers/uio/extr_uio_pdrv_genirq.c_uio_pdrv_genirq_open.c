
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_pdrv_genirq_platdata {TYPE_1__* pdev; } ;
struct uio_info {struct uio_pdrv_genirq_platdata* priv; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int uio_pdrv_genirq_open(struct uio_info *info, struct inode *inode)
{
 struct uio_pdrv_genirq_platdata *priv = info->priv;


 pm_runtime_get_sync(&priv->pdev->dev);
 return 0;
}
