
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_ntb {scalar_t__ mmio_xlink_win; TYPE_1__* stdev; } ;
struct TYPE_2__ {int pdev; } ;


 int pci_iounmap (int ,scalar_t__) ;

__attribute__((used)) static void switchtec_ntb_deinit_crosslink(struct switchtec_ntb *sndev)
{
 if (sndev->mmio_xlink_win)
  pci_iounmap(sndev->stdev->pdev, sndev->mmio_xlink_win);
}
