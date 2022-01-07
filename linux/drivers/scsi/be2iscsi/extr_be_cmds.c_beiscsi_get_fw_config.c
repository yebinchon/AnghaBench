
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int phys_port; int eqid_count; int cqid_count; int* iscsi_icd_count; int dual_ulp_aware; int ulp_supported; int * iscsi_icd_start; int * iscsi_cid_start; int * iscsi_cid_count; int * iscsi_chain_count; int * iscsi_chain_start; } ;
struct beiscsi_hba {TYPE_3__ fw_config; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_fw_cfg {int phys_port; int eqid_count; int cqid_count; int function_mode; TYPE_2__* ulp; TYPE_1__* chain_icd; int hdr; } ;
struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;
struct TYPE_5__ {int ulp_mode; int icd_count; int icd_base; int sq_count; int sq_base; } ;
struct TYPE_4__ {int chain_count; int chain_base; } ;


 int BEISCSI_FUNC_DUA_MODE ;
 int BEISCSI_GET_CID_COUNT (struct beiscsi_hba*,size_t) ;
 int BEISCSI_LOG_INIT ;
 int BEISCSI_PHYS_PORT_MAX ;
 size_t BEISCSI_ULP0 ;
 size_t BEISCSI_ULP1 ;
 size_t BEISCSI_ULP_COUNT ;
 int BEISCSI_ULP_ISCSI_INI_MODE ;
 int CMD_SUBSYSTEM_COMMON ;
 int EINVAL ;
 int EMBED_MBX_MAX_PAYLOAD_SIZE ;
 int KERN_ERR ;
 int KERN_INFO ;
 int OPCODE_COMMON_QUERY_FIRMWARE_CONFIG ;
 int be_cmd_hdr_prepare (int *,int ,int ,int ) ;
 scalar_t__ be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 struct be_fw_cfg* embedded_payload (struct be_mcc_wrb*) ;
 int is_chip_be2_be3r (struct beiscsi_hba*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (size_t,int *) ;
 scalar_t__ test_bit (size_t,int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int beiscsi_get_fw_config(struct be_ctrl_info *ctrl,
     struct beiscsi_hba *phba)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_fw_cfg *pfw_cfg = embedded_payload(wrb);
 uint32_t cid_count, icd_count;
 int status = -EINVAL;
 uint8_t ulp_num = 0;

 mutex_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));
 be_wrb_hdr_prepare(wrb, sizeof(*pfw_cfg), 1, 0);

 be_cmd_hdr_prepare(&pfw_cfg->hdr, CMD_SUBSYSTEM_COMMON,
      OPCODE_COMMON_QUERY_FIRMWARE_CONFIG,
      EMBED_MBX_MAX_PAYLOAD_SIZE);

 if (be_mbox_notify(ctrl)) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BG_%d : Failed in beiscsi_get_fw_config\n");
  goto fail_init;
 }


 phba->fw_config.phys_port = pfw_cfg->phys_port;
 if (phba->fw_config.phys_port >= BEISCSI_PHYS_PORT_MAX) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BG_%d : invalid physical port id %d\n",
       phba->fw_config.phys_port);
  goto fail_init;
 }


 if (!is_chip_be2_be3r(phba)) {
  phba->fw_config.eqid_count = pfw_cfg->eqid_count;
  phba->fw_config.cqid_count = pfw_cfg->cqid_count;
  if (phba->fw_config.eqid_count == 0 ||
      phba->fw_config.eqid_count > 2048) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BG_%d : invalid EQ count %d\n",
        phba->fw_config.eqid_count);
   goto fail_init;
  }
  if (phba->fw_config.cqid_count == 0 ||
      phba->fw_config.cqid_count > 4096) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BG_%d : invalid CQ count %d\n",
        phba->fw_config.cqid_count);
   goto fail_init;
  }
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
       "BG_%d : EQ_Count : %d CQ_Count : %d\n",
       phba->fw_config.eqid_count,
       phba->fw_config.cqid_count);
 }







 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
  if (pfw_cfg->ulp[ulp_num].ulp_mode &
      BEISCSI_ULP_ISCSI_INI_MODE) {
   set_bit(ulp_num, &phba->fw_config.ulp_supported);


   phba->fw_config.iscsi_cid_start[ulp_num] =
    pfw_cfg->ulp[ulp_num].sq_base;
   phba->fw_config.iscsi_cid_count[ulp_num] =
    pfw_cfg->ulp[ulp_num].sq_count;

   phba->fw_config.iscsi_icd_start[ulp_num] =
    pfw_cfg->ulp[ulp_num].icd_base;
   phba->fw_config.iscsi_icd_count[ulp_num] =
    pfw_cfg->ulp[ulp_num].icd_count;

   phba->fw_config.iscsi_chain_start[ulp_num] =
    pfw_cfg->chain_icd[ulp_num].chain_base;
   phba->fw_config.iscsi_chain_count[ulp_num] =
    pfw_cfg->chain_icd[ulp_num].chain_count;

   beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
        "BG_%d : Function loaded on ULP : %d\n"
        "\tiscsi_cid_count : %d\n"
        "\tiscsi_cid_start : %d\n"
        "\t iscsi_icd_count : %d\n"
        "\t iscsi_icd_start : %d\n",
        ulp_num,
        phba->fw_config.
        iscsi_cid_count[ulp_num],
        phba->fw_config.
        iscsi_cid_start[ulp_num],
        phba->fw_config.
        iscsi_icd_count[ulp_num],
        phba->fw_config.
        iscsi_icd_start[ulp_num]);
  }
 }

 if (phba->fw_config.ulp_supported == 0) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BG_%d : iSCSI initiator mode not set: ULP0 %x ULP1 %x\n",
       pfw_cfg->ulp[BEISCSI_ULP0].ulp_mode,
       pfw_cfg->ulp[BEISCSI_ULP1].ulp_mode);
  goto fail_init;
 }




 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++)
  if (test_bit(ulp_num, &phba->fw_config.ulp_supported))
   break;
 icd_count = phba->fw_config.iscsi_icd_count[ulp_num];
 if (icd_count == 0 || icd_count > 65536) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BG_%d: invalid ICD count %d\n", icd_count);
  goto fail_init;
 }

 cid_count = BEISCSI_GET_CID_COUNT(phba, BEISCSI_ULP0) +
      BEISCSI_GET_CID_COUNT(phba, BEISCSI_ULP1);
 if (cid_count == 0 || cid_count > 4096) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BG_%d: invalid CID count %d\n", cid_count);
  goto fail_init;
 }





 phba->fw_config.dual_ulp_aware = (pfw_cfg->function_mode &
       BEISCSI_FUNC_DUA_MODE);

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
      "BG_%d : DUA Mode : 0x%x\n",
      phba->fw_config.dual_ulp_aware);


 status = 0;
fail_init:
 mutex_unlock(&ctrl->mbox_lock);
 return status;
}
