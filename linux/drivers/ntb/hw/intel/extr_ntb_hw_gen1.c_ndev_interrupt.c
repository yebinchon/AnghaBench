
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct intel_ntb_dev {int hwerr_flags; int db_link_mask; int db_valid_mask; TYPE_3__ ntb; TYPE_2__* reg; int last_ts; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {scalar_t__ (* poll_link ) (struct intel_ntb_dev*) ;} ;
struct TYPE_5__ {int dev; } ;


 int IRQ_HANDLED ;
 int NTB_HWERR_MSIX_VECTOR32_BAD ;
 int dev_dbg (int *,char*,int,int) ;
 int jiffies ;
 int ndev_vec_mask (struct intel_ntb_dev*,int) ;
 int ntb_db_event (TYPE_3__*,int) ;
 int ntb_link_event (TYPE_3__*) ;
 scalar_t__ stub1 (struct intel_ntb_dev*) ;

__attribute__((used)) static irqreturn_t ndev_interrupt(struct intel_ntb_dev *ndev, int vec)
{
 u64 vec_mask;

 vec_mask = ndev_vec_mask(ndev, vec);

 if ((ndev->hwerr_flags & NTB_HWERR_MSIX_VECTOR32_BAD) && (vec == 31))
  vec_mask |= ndev->db_link_mask;

 dev_dbg(&ndev->ntb.pdev->dev, "vec %d vec_mask %llx\n", vec, vec_mask);

 ndev->last_ts = jiffies;

 if (vec_mask & ndev->db_link_mask) {
  if (ndev->reg->poll_link(ndev))
   ntb_link_event(&ndev->ntb);
 }

 if (vec_mask & ndev->db_valid_mask)
  ntb_db_event(&ndev->ntb, vec);

 return IRQ_HANDLED;
}
