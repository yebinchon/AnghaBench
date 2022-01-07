
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_ntb_vec {int num; TYPE_3__* ndev; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__ ntb; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int *,char*,int,int ) ;
 int ndev_interrupt (TYPE_3__*,int ) ;

__attribute__((used)) static irqreturn_t ndev_vec_isr(int irq, void *dev)
{
 struct intel_ntb_vec *nvec = dev;

 dev_dbg(&nvec->ndev->ntb.pdev->dev, "irq: %d  nvec->num: %d\n",
  irq, nvec->num);

 return ndev_interrupt(nvec->ndev, nvec->num);
}
