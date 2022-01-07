
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_2__* iop; } ;
struct TYPE_4__ {TYPE_3__ itl; } ;
struct hptiop_hba {TYPE_1__ u; } ;
struct TYPE_5__ {int outbound_intmask; } ;


 int IOPMU_OUTBOUND_INT_MSG0 ;
 int IOPMU_OUTBOUND_INT_POSTQUEUE ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void hptiop_disable_intr_itl(struct hptiop_hba *hba)
{
 u32 int_mask;

 int_mask = readl(&hba->u.itl.iop->outbound_intmask);
 writel(int_mask |
  IOPMU_OUTBOUND_INT_MSG0 | IOPMU_OUTBOUND_INT_POSTQUEUE,
  &hba->u.itl.iop->outbound_intmask);
 readl(&hba->u.itl.iop->outbound_intmask);
}
