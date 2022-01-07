
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int flt_region_img_status_sec; int flt_region_img_status_pri; } ;
struct qla27xx_image_status {int image_status_mask; int signature; } ;
struct active_regions {scalar_t__ global; } ;
typedef int sec_image_status ;
typedef int pri_image_status ;


 scalar_t__ QLA27XX_DEFAULT_IMAGE ;
 scalar_t__ QLA27XX_PRIMARY_IMAGE ;
 scalar_t__ QLA27XX_SECONDARY_IMAGE ;
 scalar_t__ QLA_SUCCESS ;
 int WARN_ON_ONCE (int) ;
 int le32_to_cpu (int ) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_dbg_init ;
 scalar_t__ qla24xx_read_flash_data (struct scsi_qla_host*,void*,int ,int) ;
 scalar_t__ qla27xx_check_image_status_signature (struct qla27xx_image_status*) ;
 scalar_t__ qla27xx_compare_image_generation (struct qla27xx_image_status*,struct qla27xx_image_status*) ;
 scalar_t__ qla27xx_image_status_checksum (struct qla27xx_image_status*) ;
 int qla27xx_print_image (struct scsi_qla_host*,char*,struct qla27xx_image_status*) ;

void
qla27xx_get_active_image(struct scsi_qla_host *vha,
    struct active_regions *active_regions)
{
 struct qla_hw_data *ha = vha->hw;
 struct qla27xx_image_status pri_image_status, sec_image_status;
 bool valid_pri_image = 0, valid_sec_image = 0;
 bool active_pri_image = 0, active_sec_image = 0;

 if (!ha->flt_region_img_status_pri) {
  ql_dbg(ql_dbg_init, vha, 0x018a, "Primary image not addressed\n");
  goto check_sec_image;
 }

 if (qla24xx_read_flash_data(vha, (void *)(&pri_image_status),
     ha->flt_region_img_status_pri, sizeof(pri_image_status) >> 2) !=
     QLA_SUCCESS) {
  WARN_ON_ONCE(1);
  goto check_sec_image;
 }
 qla27xx_print_image(vha, "Primary image", &pri_image_status);

 if (qla27xx_check_image_status_signature(&pri_image_status)) {
  ql_dbg(ql_dbg_init, vha, 0x018b,
      "Primary image signature (%#x) not valid\n",
      le32_to_cpu(pri_image_status.signature));
  goto check_sec_image;
 }

 if (qla27xx_image_status_checksum(&pri_image_status)) {
  ql_dbg(ql_dbg_init, vha, 0x018c,
      "Primary image checksum failed\n");
  goto check_sec_image;
 }

 valid_pri_image = 1;

 if (pri_image_status.image_status_mask & 1) {
  ql_dbg(ql_dbg_init, vha, 0x018d,
      "Primary image is active\n");
  active_pri_image = 1;
 }

check_sec_image:
 if (!ha->flt_region_img_status_sec) {
  ql_dbg(ql_dbg_init, vha, 0x018a, "Secondary image not addressed\n");
  goto check_valid_image;
 }

 qla24xx_read_flash_data(vha, (uint32_t *)(&sec_image_status),
     ha->flt_region_img_status_sec, sizeof(sec_image_status) >> 2);
 qla27xx_print_image(vha, "Secondary image", &sec_image_status);

 if (qla27xx_check_image_status_signature(&sec_image_status)) {
  ql_dbg(ql_dbg_init, vha, 0x018b,
      "Secondary image signature (%#x) not valid\n",
      le32_to_cpu(sec_image_status.signature));
  goto check_valid_image;
 }

 if (qla27xx_image_status_checksum(&sec_image_status)) {
  ql_dbg(ql_dbg_init, vha, 0x018c,
      "Secondary image checksum failed\n");
  goto check_valid_image;
 }

 valid_sec_image = 1;

 if (sec_image_status.image_status_mask & 1) {
  ql_dbg(ql_dbg_init, vha, 0x018d,
      "Secondary image is active\n");
  active_sec_image = 1;
 }

check_valid_image:
 if (valid_pri_image && active_pri_image)
  active_regions->global = QLA27XX_PRIMARY_IMAGE;

 if (valid_sec_image && active_sec_image) {
  if (!active_regions->global ||
      qla27xx_compare_image_generation(
   &pri_image_status, &sec_image_status) < 0) {
   active_regions->global = QLA27XX_SECONDARY_IMAGE;
  }
 }

 ql_dbg(ql_dbg_init, vha, 0x018f, "active image %s (%u)\n",
     active_regions->global == QLA27XX_DEFAULT_IMAGE ?
  "default (boot/fw)" :
     active_regions->global == QLA27XX_PRIMARY_IMAGE ?
  "primary" :
     active_regions->global == QLA27XX_SECONDARY_IMAGE ?
  "secondary" : "invalid",
     active_regions->global);
}
