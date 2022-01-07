
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct amd_ntb_dev {int msix_vec_count; TYPE_2__ ntb; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int dev; } ;


 int AMD_DB_CNT ;
 int IRQ_HANDLED ;
 int amd_handle_event (struct amd_ntb_dev*,int) ;
 int dev_dbg (int *,char*,int) ;
 int ntb_db_event (TYPE_2__*,int) ;

__attribute__((used)) static irqreturn_t ndev_interrupt(struct amd_ntb_dev *ndev, int vec)
{
 dev_dbg(&ndev->ntb.pdev->dev, "vec %d\n", vec);

 if (vec > (AMD_DB_CNT - 1) || (ndev->msix_vec_count == 1))
  amd_handle_event(ndev, vec);

 if (vec < AMD_DB_CNT)
  ntb_db_event(&ndev->ntb, vec);

 return IRQ_HANDLED;
}
