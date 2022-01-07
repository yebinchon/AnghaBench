
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int pdev; } ;
struct intel_ntb_dev {int b2b_idx; int b2b_off; TYPE_1__ ntb; } ;
typedef scalar_t__ resource_size_t ;
typedef scalar_t__ phys_addr_t ;


 int ndev_mw_to_bar (struct intel_ntb_dev*,int) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;
 scalar_t__ pci_resource_len (int ,int) ;
 scalar_t__ pci_resource_start (int ,int) ;

int intel_ntb_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
          phys_addr_t *base, resource_size_t *size)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);
 int bar;

 if (idx >= ndev->b2b_idx && !ndev->b2b_off)
  idx += 1;

 bar = ndev_mw_to_bar(ndev, idx);
 if (bar < 0)
  return bar;

 if (base)
  *base = pci_resource_start(ndev->ntb.pdev, bar) +
   (idx == ndev->b2b_idx ? ndev->b2b_off : 0);

 if (size)
  *size = pci_resource_len(ndev->ntb.pdev, bar) -
   (idx == ndev->b2b_idx ? ndev->b2b_off : 0);

 return 0;
}
