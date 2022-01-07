
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct lpfc_hba {scalar_t__ cfg_hdw_queue; } ;


 int lpfc_adjust_high_watermark (struct lpfc_hba*,scalar_t__) ;
 int lpfc_adjust_pvt_pool_count (struct lpfc_hba*,scalar_t__) ;
 int lpfc_snapshot_mxp (struct lpfc_hba*,scalar_t__) ;

__attribute__((used)) static void lpfc_hb_mxp_handler(struct lpfc_hba *phba)
{
 u32 i;
 u32 hwq_count;

 hwq_count = phba->cfg_hdw_queue;
 for (i = 0; i < hwq_count; i++) {

  lpfc_adjust_pvt_pool_count(phba, i);


  lpfc_adjust_high_watermark(phba, i);





 }
}
