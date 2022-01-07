
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int * ops; int topo; struct pci_dev* pdev; } ;
struct intel_ntb_dev {int db_mask_lock; scalar_t__ db_mask; scalar_t__ db_link_mask; scalar_t__ db_valid_mask; scalar_t__ lnk_sta; scalar_t__ ntb_ctl; scalar_t__ db_vec_shift; scalar_t__ db_vec_count; scalar_t__ db_count; scalar_t__ spad_count; scalar_t__ mw_count; scalar_t__ bar4_split; int b2b_idx; scalar_t__ b2b_off; TYPE_1__ ntb; } ;


 int NTB_TOPO_NONE ;
 int UINT_MAX ;
 int intel_ntb_ops ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void ndev_init_struct(struct intel_ntb_dev *ndev,
        struct pci_dev *pdev)
{
 ndev->ntb.pdev = pdev;
 ndev->ntb.topo = NTB_TOPO_NONE;
 ndev->ntb.ops = &intel_ntb_ops;

 ndev->b2b_off = 0;
 ndev->b2b_idx = UINT_MAX;

 ndev->bar4_split = 0;

 ndev->mw_count = 0;
 ndev->spad_count = 0;
 ndev->db_count = 0;
 ndev->db_vec_count = 0;
 ndev->db_vec_shift = 0;

 ndev->ntb_ctl = 0;
 ndev->lnk_sta = 0;

 ndev->db_valid_mask = 0;
 ndev->db_link_mask = 0;
 ndev->db_mask = 0;

 spin_lock_init(&ndev->db_mask_lock);
}
