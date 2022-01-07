
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mu; } ;
struct TYPE_6__ {TYPE_2__ mvfrey; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {int pcie_f0_int_enable; int isr_enable; int f0_doorbell_enable; } ;


 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static void hptiop_disable_intr_mvfrey(struct hptiop_hba *hba)
{
 writel(0, &(hba->u.mvfrey.mu->f0_doorbell_enable));
 readl(&(hba->u.mvfrey.mu->f0_doorbell_enable));
 writel(0, &(hba->u.mvfrey.mu->isr_enable));
 readl(&(hba->u.mvfrey.mu->isr_enable));
 writel(0, &(hba->u.mvfrey.mu->pcie_f0_int_enable));
 readl(&(hba->u.mvfrey.mu->pcie_f0_int_enable));
}
