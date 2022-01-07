
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsi721_device {int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int DRV_NAME ;
 int IRQF_SHARED ;
 int TSI721_USING_MSI ;
 int TSI721_USING_MSIX ;
 int request_irq (int ,int ,int ,int ,void*) ;
 int tsi721_irqhandler ;
 int tsi721_request_msix (struct tsi721_device*) ;
 int tsi_err (int *,char*,int) ;

__attribute__((used)) static int tsi721_request_irq(struct tsi721_device *priv)
{
 int err;






  err = request_irq(priv->pdev->irq, tsi721_irqhandler,
     (priv->flags & TSI721_USING_MSI) ? 0 : IRQF_SHARED,
     DRV_NAME, (void *)priv);

 if (err)
  tsi_err(&priv->pdev->dev,
   "Unable to allocate interrupt, err=%d", err);

 return err;
}
