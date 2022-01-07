
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {TYPE_1__* pport; int HAregaddr; int HCregaddr; } ;
struct TYPE_2__ {scalar_t__ work_port_events; } ;


 int lpfc_stop_hba_timers (struct lpfc_hba*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void
lpfc_stop_port_s3(struct lpfc_hba *phba)
{

 writel(0, phba->HCregaddr);
 readl(phba->HCregaddr);

 writel(0xffffffff, phba->HAregaddr);
 readl(phba->HAregaddr);


 lpfc_stop_hba_timers(phba);
 phba->pport->work_port_events = 0;
}
