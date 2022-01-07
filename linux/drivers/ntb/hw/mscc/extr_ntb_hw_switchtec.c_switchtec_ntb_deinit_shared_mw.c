
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switchtec_ntb {int nr_rsvd_luts; int self_shared_dma; scalar_t__ self_shared; TYPE_1__* stdev; scalar_t__ peer_shared; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* pdev; } ;


 int LUT_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int pci_iounmap (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void switchtec_ntb_deinit_shared_mw(struct switchtec_ntb *sndev)
{
 if (sndev->peer_shared)
  pci_iounmap(sndev->stdev->pdev, sndev->peer_shared);

 if (sndev->self_shared)
  dma_free_coherent(&sndev->stdev->pdev->dev, LUT_SIZE,
      sndev->self_shared,
      sndev->self_shared_dma);
 sndev->nr_rsvd_luts--;
}
