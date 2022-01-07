
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_xri_cnt; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 int EIO ;
 int LIST_HEAD (int ) ;
 int list_empty (int *) ;
 int lpfc_io_buf_flush (struct lpfc_hba*,int *) ;
 int lpfc_sli4_post_io_sgl_list (struct lpfc_hba*,int *,int ) ;
 int post_nblist ;

__attribute__((used)) static int
lpfc_sli4_repost_io_sgl_list(struct lpfc_hba *phba)
{
 LIST_HEAD(post_nblist);
 int num_posted, rc = 0;


 lpfc_io_buf_flush(phba, &post_nblist);


 if (!list_empty(&post_nblist)) {
  num_posted = lpfc_sli4_post_io_sgl_list(
   phba, &post_nblist, phba->sli4_hba.io_xri_cnt);

  if (num_posted == 0)
   rc = -EIO;
 }
 return rc;
}
