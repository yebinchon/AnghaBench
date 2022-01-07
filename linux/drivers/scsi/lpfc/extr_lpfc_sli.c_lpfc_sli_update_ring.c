
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli_ring {int ringno; } ;
struct lpfc_hba {int sli3_options; int CAregaddr; } ;


 int CA_R0ATT ;
 int LPFC_SLI3_CRP_ENABLED ;
 int readl (int ) ;
 int wmb () ;
 int writel (int,int ) ;

__attribute__((used)) static void
lpfc_sli_update_ring(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
 int ringno = pring->ringno;




 if (!(phba->sli3_options & LPFC_SLI3_CRP_ENABLED)) {
  wmb();
  writel(CA_R0ATT << (ringno * 4), phba->CAregaddr);
  readl(phba->CAregaddr);
 }
}
