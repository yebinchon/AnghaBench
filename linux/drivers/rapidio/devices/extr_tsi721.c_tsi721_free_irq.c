
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsi721_device {int flags; TYPE_2__* pdev; TYPE_1__* msix; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int TSI721_USING_MSIX ;
 size_t TSI721_VECT_IDB ;
 size_t TSI721_VECT_PWRX ;
 int free_irq (int ,void*) ;

__attribute__((used)) static void tsi721_free_irq(struct tsi721_device *priv)
{






 free_irq(priv->pdev->irq, (void *)priv);
}
