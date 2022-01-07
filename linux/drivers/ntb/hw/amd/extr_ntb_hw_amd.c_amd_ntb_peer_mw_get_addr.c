
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int pdev; } ;
struct amd_ntb_dev {TYPE_1__ ntb; } ;
typedef int resource_size_t ;
typedef int phys_addr_t ;


 int ndev_mw_to_bar (struct amd_ntb_dev*,int) ;
 struct amd_ntb_dev* ntb_ndev (struct ntb_dev*) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;

__attribute__((used)) static int amd_ntb_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
        phys_addr_t *base, resource_size_t *size)
{
 struct amd_ntb_dev *ndev = ntb_ndev(ntb);
 int bar;

 bar = ndev_mw_to_bar(ndev, idx);
 if (bar < 0)
  return bar;

 if (base)
  *base = pci_resource_start(ndev->ntb.pdev, bar);

 if (size)
  *size = pci_resource_len(ndev->ntb.pdev, bar);

 return 0;
}
