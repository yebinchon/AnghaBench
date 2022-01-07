
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int pdev; } ;
struct idt_ntb_dev {int mw_cnt; TYPE_1__* mws; } ;
typedef int resource_size_t ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {int idx; int size_max; int bar; } ;


 int EINVAL ;
 scalar_t__ pci_resource_start (int ,int ) ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_peer_mw_get_addr(struct ntb_dev *ntb, int widx,
        phys_addr_t *base, resource_size_t *size)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 if (widx < 0 || ndev->mw_cnt <= widx)
  return -EINVAL;


 if (base != ((void*)0))
  *base = pci_resource_start(ntb->pdev, ndev->mws[widx].bar) +
   ndev->mws[widx].idx * ndev->mws[widx].size_max;


 if (size != ((void*)0))
  *size = ndev->mws[widx].size_max;

 return 0;
}
