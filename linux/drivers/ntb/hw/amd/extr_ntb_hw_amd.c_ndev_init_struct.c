
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int * ops; int topo; struct pci_dev* pdev; } ;
struct amd_ntb_dev {int db_mask_lock; int int_mask; TYPE_1__ ntb; } ;


 int AMD_EVENT_INTMASK ;
 int NTB_TOPO_NONE ;
 int amd_ntb_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void ndev_init_struct(struct amd_ntb_dev *ndev,
        struct pci_dev *pdev)
{
 ndev->ntb.pdev = pdev;
 ndev->ntb.topo = NTB_TOPO_NONE;
 ndev->ntb.ops = &amd_ntb_ops;
 ndev->int_mask = AMD_EVENT_INTMASK;
 spin_lock_init(&ndev->db_mask_lock);
}
