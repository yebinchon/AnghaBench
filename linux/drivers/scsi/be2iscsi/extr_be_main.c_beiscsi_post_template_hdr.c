
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mem_array {int dummy; } ;
struct TYPE_2__ {int ulp_supported; } ;
struct beiscsi_hba {int ctrl; scalar_t__ init_mem; TYPE_1__ fw_config; } ;
struct be_mem_descriptor {struct mem_array* mem_array; } ;
struct be_dma_mem {int dummy; } ;


 int BEISCSI_LOG_INIT ;
 int BEISCSI_ULP_COUNT ;
 scalar_t__ HWI_MEM_TEMPLATE_HDR_ULP0 ;
 int KERN_ERR ;
 int KERN_INFO ;
 int MEM_DESCR_OFFSET ;
 int be_cmd_iscsi_post_template_hdr (int *,struct be_dma_mem*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int hwi_build_be_sgl_arr (struct beiscsi_hba*,struct mem_array*,struct be_dma_mem*) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int
beiscsi_post_template_hdr(struct beiscsi_hba *phba)
{
 struct be_mem_descriptor *mem_descr;
 struct mem_array *pm_arr;
 struct be_dma_mem sgl;
 int status, ulp_num;

 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
  if (test_bit(ulp_num, &phba->fw_config.ulp_supported)) {
   mem_descr = (struct be_mem_descriptor *)phba->init_mem;
   mem_descr += HWI_MEM_TEMPLATE_HDR_ULP0 +
        (ulp_num * MEM_DESCR_OFFSET);
   pm_arr = mem_descr->mem_array;

   hwi_build_be_sgl_arr(phba, pm_arr, &sgl);
   status = be_cmd_iscsi_post_template_hdr(
     &phba->ctrl, &sgl);

   if (status != 0) {
    beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
         "BM_%d : Post Template HDR Failed for"
         "ULP_%d\n", ulp_num);
    return status;
   }

   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
        "BM_%d : Template HDR Pages Posted for"
        "ULP_%d\n", ulp_num);
  }
 }
 return 0;
}
