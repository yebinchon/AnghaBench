
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_nhi {int hop_count; TYPE_2__* ops; int msix_ida; int interrupt_work; TYPE_1__* pdev; scalar_t__* rx_rings; scalar_t__* tx_rings; } ;
struct TYPE_4__ {int (* shutdown ) (struct tb_nhi*) ;} ;
struct TYPE_3__ {int irq; int dev; int msix_enabled; } ;


 int dev_WARN (int *,char*,int) ;
 int dev_dbg (int *,char*) ;
 int devm_free_irq (int *,int ,struct tb_nhi*) ;
 int flush_work (int *) ;
 int ida_destroy (int *) ;
 int nhi_disable_interrupts (struct tb_nhi*) ;
 int stub1 (struct tb_nhi*) ;

__attribute__((used)) static void nhi_shutdown(struct tb_nhi *nhi)
{
 int i;

 dev_dbg(&nhi->pdev->dev, "shutdown\n");

 for (i = 0; i < nhi->hop_count; i++) {
  if (nhi->tx_rings[i])
   dev_WARN(&nhi->pdev->dev,
     "TX ring %d is still active\n", i);
  if (nhi->rx_rings[i])
   dev_WARN(&nhi->pdev->dev,
     "RX ring %d is still active\n", i);
 }
 nhi_disable_interrupts(nhi);




 if (!nhi->pdev->msix_enabled) {
  devm_free_irq(&nhi->pdev->dev, nhi->pdev->irq, nhi);
  flush_work(&nhi->interrupt_work);
 }
 ida_destroy(&nhi->msix_ida);

 if (nhi->ops && nhi->ops->shutdown)
  nhi->ops->shutdown(nhi);
}
