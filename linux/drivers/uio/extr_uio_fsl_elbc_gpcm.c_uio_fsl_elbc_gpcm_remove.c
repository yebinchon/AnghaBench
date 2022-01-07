
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {struct uio_info* name; TYPE_1__* mem; int (* shutdown ) (struct uio_info*,int) ;struct uio_info* priv; } ;
struct platform_device {int dummy; } ;
struct fsl_elbc_gpcm {struct fsl_elbc_gpcm* name; TYPE_1__* mem; int (* shutdown ) (struct uio_info*,int) ;struct fsl_elbc_gpcm* priv; } ;
struct TYPE_2__ {struct uio_info* name; int internal_addr; } ;


 int iounmap (int ) ;
 int kfree (struct uio_info*) ;
 struct uio_info* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int stub1 (struct uio_info*,int) ;
 int uio_unregister_device (struct uio_info*) ;

__attribute__((used)) static int uio_fsl_elbc_gpcm_remove(struct platform_device *pdev)
{
 struct uio_info *info = platform_get_drvdata(pdev);
 struct fsl_elbc_gpcm *priv = info->priv;

 platform_set_drvdata(pdev, ((void*)0));
 uio_unregister_device(info);
 if (priv->shutdown)
  priv->shutdown(info, 0);
 iounmap(info->mem[0].internal_addr);
 kfree(info->mem[0].name);
 kfree(info->name);
 kfree(info);
 kfree(priv);

 return 0;

}
