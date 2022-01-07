
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct iscsi_sge {int dummy; } ;
struct TYPE_4__ {int ios_per_ctrl; int cxns_per_ctrl; int icds_per_ctrl; int num_sge_per_io; int num_eq_entries; int num_cq_entries; int wrbs_per_cxn; int defpdu_data_sz; int defpdu_hdr_sz; } ;
struct TYPE_3__ {int* iscsi_icd_start; int* iscsi_icd_count; int ulp_supported; } ;
struct beiscsi_hba {TYPE_2__ params; TYPE_1__ fw_config; } ;


 int BE2_DEFPDU_DATA_SZ ;
 int BE2_DEFPDU_HDR_SZ ;
 int BE2_NOPOUT_REQ ;
 int BE2_SGE ;
 int BE2_TMFS ;
 int BEISCSI_GET_CID_COUNT (struct beiscsi_hba*,int ) ;
 int BEISCSI_LOG_INIT ;
 int BEISCSI_ULP0 ;
 int BEISCSI_ULP1 ;
 size_t BEISCSI_ULP_COUNT ;
 int KERN_INFO ;
 int PAGE_SIZE ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int,int,int) ;
 scalar_t__ test_bit (size_t,int *) ;

__attribute__((used)) static void beiscsi_get_params(struct beiscsi_hba *phba)
{
 uint32_t total_cid_count = 0;
 uint32_t total_icd_count = 0;
 uint8_t ulp_num = 0;

 total_cid_count = BEISCSI_GET_CID_COUNT(phba, BEISCSI_ULP0) +
     BEISCSI_GET_CID_COUNT(phba, BEISCSI_ULP1);

 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
  uint32_t align_mask = 0;
  uint32_t icd_post_per_page = 0;
  uint32_t icd_count_unavailable = 0;
  uint32_t icd_start = 0, icd_count = 0;
  uint32_t icd_start_align = 0, icd_count_align = 0;

  if (test_bit(ulp_num, &phba->fw_config.ulp_supported)) {
   icd_start = phba->fw_config.iscsi_icd_start[ulp_num];
   icd_count = phba->fw_config.iscsi_icd_count[ulp_num];


   icd_post_per_page = (PAGE_SIZE / (BE2_SGE *
          sizeof(struct iscsi_sge)));
   align_mask = (icd_post_per_page - 1);


   if (icd_start % icd_post_per_page) {
    icd_start_align = ((icd_start +
          icd_post_per_page) &
          ~(align_mask));
    phba->fw_config.
     iscsi_icd_start[ulp_num] =
     icd_start_align;
   }

   icd_count_align = (icd_count & ~align_mask);


   if (icd_start_align)
    icd_count_unavailable = ((icd_start_align -
         icd_start) +
        (icd_count -
         icd_count_align));


   phba->fw_config.iscsi_icd_count[ulp_num] = (icd_count -
     icd_count_unavailable);

   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
     "BM_%d : Aligned ICD values\n"
     "\t ICD Start : %d\n"
     "\t ICD Count : %d\n"
     "\t ICD Discarded : %d\n",
     phba->fw_config.
     iscsi_icd_start[ulp_num],
     phba->fw_config.
     iscsi_icd_count[ulp_num],
     icd_count_unavailable);
   break;
  }
 }

 total_icd_count = phba->fw_config.iscsi_icd_count[ulp_num];
 phba->params.ios_per_ctrl = (total_icd_count -
        (total_cid_count +
         BE2_TMFS + BE2_NOPOUT_REQ));
 phba->params.cxns_per_ctrl = total_cid_count;
 phba->params.icds_per_ctrl = total_icd_count;
 phba->params.num_sge_per_io = BE2_SGE;
 phba->params.defpdu_hdr_sz = BE2_DEFPDU_HDR_SZ;
 phba->params.defpdu_data_sz = BE2_DEFPDU_DATA_SZ;
 phba->params.num_eq_entries = 1024;
 phba->params.num_cq_entries = 1024;
 phba->params.wrbs_per_cxn = 256;
}
