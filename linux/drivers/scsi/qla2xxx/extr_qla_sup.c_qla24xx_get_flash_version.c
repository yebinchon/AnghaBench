
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int* bios_revision; int* efi_revision; int* fcode_revision; int* fw_revision; int flt_region_boot; int flt_region_boot_sec; int flt_region_fw; int flt_region_fw_sec; int* gold_fw_version; int flt_region_gold_fw; } ;
struct active_regions {scalar_t__ global; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_7 ;
 scalar_t__ IS_P3P_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 int IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ QLA27XX_SECONDARY_IMAGE ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;



 void* be32_to_cpu (int) ;
 scalar_t__ memcmp (int*,char*,int) ;
 int memset (int*,int ,int) ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int,int,...) ;
 int ql_dbg_init ;
 int ql_dump_buffer (int ,TYPE_1__*,int,int*,int) ;
 int ql_log (int ,TYPE_1__*,int,char*,...) ;
 int ql_log_fatal ;
 int ql_log_warn ;
 int qla24xx_read_flash_data (TYPE_1__*,void*,int,int) ;
 scalar_t__ qla24xx_risc_firmware_invalid (int*) ;
 int qla27xx_get_active_image (TYPE_1__*,struct active_regions*) ;

int
qla24xx_get_flash_version(scsi_qla_host_t *vha, void *mbuf)
{
 int ret = QLA_SUCCESS;
 uint32_t pcihdr = 0, pcids = 0;
 uint32_t *dcode = mbuf;
 uint8_t *bcode = mbuf;
 uint8_t code_type, last_image;
 int i;
 struct qla_hw_data *ha = vha->hw;
 uint32_t faddr = 0;
 struct active_regions active_regions = { };

 if (IS_P3P_TYPE(ha))
  return ret;

 if (!mbuf)
  return QLA_FUNCTION_FAILED;

 memset(ha->bios_revision, 0, sizeof(ha->bios_revision));
 memset(ha->efi_revision, 0, sizeof(ha->efi_revision));
 memset(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));

 pcihdr = ha->flt_region_boot << 2;
 if (IS_QLA27XX(ha) || IS_QLA28XX(ha)) {
  qla27xx_get_active_image(vha, &active_regions);
  if (active_regions.global == QLA27XX_SECONDARY_IMAGE) {
   pcihdr = ha->flt_region_boot_sec << 2;
  }
 }

 do {

  qla24xx_read_flash_data(vha, dcode, pcihdr >> 2, 0x20);
  bcode = mbuf + (pcihdr % 4);
  if (memcmp(bcode, "\x55\xaa", 2)) {

   ql_log(ql_log_fatal, vha, 0x0059,
       "No matching ROM signature.\n");
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);

  qla24xx_read_flash_data(vha, dcode, pcids >> 2, 0x20);
  bcode = mbuf + (pcihdr % 4);


  if (memcmp(bcode, "PCIR", 4)) {

   ql_log(ql_log_fatal, vha, 0x005a,
       "PCI data struct not found pcir_adr=%x.\n", pcids);
   ql_dump_buffer(ql_dbg_init, vha, 0x0059, dcode, 32);
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  code_type = bcode[0x14];
  switch (code_type) {
  case 130:

   ha->bios_revision[0] = bcode[0x12];
   ha->bios_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x005b,
       "Read BIOS %d.%d.\n",
       ha->bios_revision[1], ha->bios_revision[0]);
   break;
  case 128:

   ha->fcode_revision[0] = bcode[0x12];
   ha->fcode_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x005c,
       "Read FCODE %d.%d.\n",
       ha->fcode_revision[1], ha->fcode_revision[0]);
   break;
  case 129:

   ha->efi_revision[0] = bcode[0x12];
   ha->efi_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x005d,
       "Read EFI %d.%d.\n",
       ha->efi_revision[1], ha->efi_revision[0]);
   break;
  default:
   ql_log(ql_log_warn, vha, 0x005e,
       "Unrecognized code type %x at pcids %x.\n",
       code_type, pcids);
   break;
  }

  last_image = bcode[0x15] & BIT_7;


  pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
 } while (!last_image);


 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));
 faddr = ha->flt_region_fw;
 if (IS_QLA27XX(ha) || IS_QLA28XX(ha)) {
  qla27xx_get_active_image(vha, &active_regions);
  if (active_regions.global == QLA27XX_SECONDARY_IMAGE)
   faddr = ha->flt_region_fw_sec;
 }

 qla24xx_read_flash_data(vha, dcode, faddr, 8);
 if (qla24xx_risc_firmware_invalid(dcode)) {
  ql_log(ql_log_warn, vha, 0x005f,
      "Unrecognized fw revision at %x.\n",
      ha->flt_region_fw * 4);
  ql_dump_buffer(ql_dbg_init, vha, 0x005f, dcode, 32);
 } else {
  for (i = 0; i < 4; i++)
   ha->fw_revision[i] = be32_to_cpu(dcode[4+i]);
  ql_dbg(ql_dbg_init, vha, 0x0060,
      "Firmware revision (flash) %u.%u.%u (%x).\n",
      ha->fw_revision[0], ha->fw_revision[1],
      ha->fw_revision[2], ha->fw_revision[3]);
 }


 if (!IS_QLA81XX(ha)) {

  return ret;
 }

 memset(ha->gold_fw_version, 0, sizeof(ha->gold_fw_version));
 faddr = ha->flt_region_gold_fw;
 qla24xx_read_flash_data(vha, (void *)dcode, ha->flt_region_gold_fw, 8);
 if (qla24xx_risc_firmware_invalid(dcode)) {
  ql_log(ql_log_warn, vha, 0x0056,
      "Unrecognized golden fw at %#x.\n", faddr);
  ql_dump_buffer(ql_dbg_init, vha, 0x0056, dcode, 32);
  return ret;
 }

 for (i = 0; i < 4; i++)
  ha->gold_fw_version[i] = be32_to_cpu(dcode[4+i]);

 return ret;
}
