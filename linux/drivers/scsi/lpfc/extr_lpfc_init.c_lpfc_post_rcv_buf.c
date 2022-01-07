
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli {int * sli3_ring; } ;
struct lpfc_hba {struct lpfc_sli sli; } ;


 int LPFC_BUF_RING0 ;
 size_t LPFC_ELS_RING ;
 int lpfc_post_buffer (struct lpfc_hba*,int *,int ) ;

__attribute__((used)) static int
lpfc_post_rcv_buf(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;


 lpfc_post_buffer(phba, &psli->sli3_ring[LPFC_ELS_RING], LPFC_BUF_RING0);


 return 0;
}
