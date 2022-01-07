
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int internal_req_phy; scalar_t__ internal_req; } ;
struct TYPE_6__ {TYPE_2__ mv; } ;
struct hptiop_hba {TYPE_3__ u; TYPE_1__* pcidev; } ;
struct TYPE_4__ {int dev; } ;


 int dma_free_coherent (int *,int,scalar_t__,int ) ;

__attribute__((used)) static int hptiop_internal_memfree_mv(struct hptiop_hba *hba)
{
 if (hba->u.mv.internal_req) {
  dma_free_coherent(&hba->pcidev->dev, 0x800,
   hba->u.mv.internal_req, hba->u.mv.internal_req_phy);
  return 0;
 } else
  return -1;
}
