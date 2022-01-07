
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* iop; } ;
struct TYPE_6__ {TYPE_2__ itl; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {int outbound_intmask; } ;


 int IOPMU_OUTBOUND_INT_MSG0 ;
 int IOPMU_OUTBOUND_INT_POSTQUEUE ;
 int writel (int,int *) ;

__attribute__((used)) static void hptiop_enable_intr_itl(struct hptiop_hba *hba)
{
 writel(~(IOPMU_OUTBOUND_INT_POSTQUEUE | IOPMU_OUTBOUND_INT_MSG0),
  &hba->u.itl.iop->outbound_intmask);
}
