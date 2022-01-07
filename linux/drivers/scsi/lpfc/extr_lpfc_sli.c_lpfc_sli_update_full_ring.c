
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iocb_cmd_full; } ;
struct lpfc_sli_ring {int ringno; TYPE_1__ stats; int flag; } ;
struct lpfc_hba {int CAregaddr; } ;


 int CA_R0ATT ;
 int CA_R0CE_REQ ;
 int LPFC_CALL_RING_AVAILABLE ;
 int readl (int ) ;
 int wmb () ;
 int writel (int,int ) ;

__attribute__((used)) static void
lpfc_sli_update_full_ring(struct lpfc_hba *phba, struct lpfc_sli_ring *pring)
{
 int ringno = pring->ringno;

 pring->flag |= LPFC_CALL_RING_AVAILABLE;

 wmb();





 writel((CA_R0ATT|CA_R0CE_REQ) << (ringno*4), phba->CAregaddr);
 readl(phba->CAregaddr);

 pring->stats.iocb_cmd_full++;
}
