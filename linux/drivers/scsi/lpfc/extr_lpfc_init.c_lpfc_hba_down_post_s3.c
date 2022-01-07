
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;


 int lpfc_hba_clean_txcmplq (struct lpfc_hba*) ;
 int lpfc_hba_free_post_buf (struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_hba_down_post_s3(struct lpfc_hba *phba)
{
 lpfc_hba_free_post_buf(phba);
 lpfc_hba_clean_txcmplq(phba);
 return 0;
}
