
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct qla_hw_data {int* bios_revision; int* efi_revision; int* fcode_revision; int* fw_revision; int flt_region_boot; int flt_region_fw; TYPE_1__* isp_ops; } ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_9__ {int (* read_optrom ) (TYPE_2__*,int*,int,int) ;} ;


 int BIT_7 ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;



 scalar_t__ memcmp (int*,char*,int) ;
 int memset (int*,int ,int) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int,int,...) ;
 int ql_dbg_init ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_fatal ;
 int ql_log_warn ;
 int stub1 (TYPE_2__*,int*,int,int) ;
 int stub2 (TYPE_2__*,int*,int,int) ;
 int stub3 (TYPE_2__*,int*,int,int) ;

int
qla82xx_get_flash_version(scsi_qla_host_t *vha, void *mbuf)
{
 int ret = QLA_SUCCESS;
 uint32_t pcihdr, pcids;
 uint32_t *dcode = mbuf;
 uint8_t *bcode = mbuf;
 uint8_t code_type, last_image;
 struct qla_hw_data *ha = vha->hw;

 if (!mbuf)
  return QLA_FUNCTION_FAILED;

 memset(ha->bios_revision, 0, sizeof(ha->bios_revision));
 memset(ha->efi_revision, 0, sizeof(ha->efi_revision));
 memset(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));


 pcihdr = ha->flt_region_boot << 2;
 last_image = 1;
 do {

  ha->isp_ops->read_optrom(vha, dcode, pcihdr, 0x20 * 4);
  bcode = mbuf + (pcihdr % 4);
  if (memcmp(bcode, "\x55\xaa", 2)) {

   ql_log(ql_log_fatal, vha, 0x0154,
       "No matching ROM signature.\n");
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);

  ha->isp_ops->read_optrom(vha, dcode, pcids, 0x20 * 4);
  bcode = mbuf + (pcihdr % 4);


  if (memcmp(bcode, "PCIR", 4)) {

   ql_log(ql_log_fatal, vha, 0x0155,
       "PCI data struct not found pcir_adr=%x.\n", pcids);
   ret = QLA_FUNCTION_FAILED;
   break;
  }


  code_type = bcode[0x14];
  switch (code_type) {
  case 130:

   ha->bios_revision[0] = bcode[0x12];
   ha->bios_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x0156,
       "Read BIOS %d.%d.\n",
       ha->bios_revision[1], ha->bios_revision[0]);
   break;
  case 128:

   ha->fcode_revision[0] = bcode[0x12];
   ha->fcode_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x0157,
       "Read FCODE %d.%d.\n",
       ha->fcode_revision[1], ha->fcode_revision[0]);
   break;
  case 129:

   ha->efi_revision[0] = bcode[0x12];
   ha->efi_revision[1] = bcode[0x13];
   ql_dbg(ql_dbg_init, vha, 0x0158,
       "Read EFI %d.%d.\n",
       ha->efi_revision[1], ha->efi_revision[0]);
   break;
  default:
   ql_log(ql_log_warn, vha, 0x0159,
       "Unrecognized code type %x at pcids %x.\n",
       code_type, pcids);
   break;
  }

  last_image = bcode[0x15] & BIT_7;


  pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
 } while (!last_image);


 memset(ha->fw_revision, 0, sizeof(ha->fw_revision));
 dcode = mbuf;
 ha->isp_ops->read_optrom(vha, dcode, ha->flt_region_fw << 2, 0x20);
 bcode = mbuf + (pcihdr % 4);


 if (bcode[0x0] == 0x3 && bcode[0x1] == 0x0 &&
     bcode[0x2] == 0x40 && bcode[0x3] == 0x40) {
  ha->fw_revision[0] = bcode[0x4];
  ha->fw_revision[1] = bcode[0x5];
  ha->fw_revision[2] = bcode[0x6];
  ql_dbg(ql_dbg_init, vha, 0x0153,
      "Firmware revision %d.%d.%d\n",
      ha->fw_revision[0], ha->fw_revision[1],
      ha->fw_revision[2]);
 }

 return ret;
}
