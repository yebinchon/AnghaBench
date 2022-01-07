
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct req_que {scalar_t__ ring; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct qla_flt_location {int start_hi; int start_lo; int sig; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_7 ;
 int FA_FLASH_LAYOUT_ADDR ;
 int FA_FLASH_LAYOUT_ADDR_24 ;
 int FA_FLASH_LAYOUT_ADDR_28 ;
 int FA_FLASH_LAYOUT_ADDR_81 ;
 int FA_FLASH_LAYOUT_ADDR_82 ;
 int FA_FLASH_LAYOUT_ADDR_83 ;
 scalar_t__ IS_P3P_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA24XX_TYPE (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA81XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int le16_to_cpu (int) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int ql_dbg (scalar_t__,TYPE_1__*,int,char*,char const*,int) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_init ;
 int ql_dump_buffer (scalar_t__,TYPE_1__*,int,struct qla_flt_location*,int) ;
 int ql_log (int ,TYPE_1__*,int,char*,int) ;
 int ql_log_fatal ;
 int qla24xx_read_flash_data (TYPE_1__*,int*,int,int) ;

__attribute__((used)) static int
qla2xxx_find_flt_start(scsi_qla_host_t *vha, uint32_t *start)
{
 const char *loc, *locations[] = { "DEF", "PCI" };
 uint32_t pcihdr, pcids;
 uint16_t cnt, chksum, *wptr;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req = ha->req_q_map[0];
 struct qla_flt_location *fltl = (void *)req->ring;
 uint32_t *dcode = (void *)req->ring;
 uint8_t *buf = (void *)req->ring, *bcode, last_image;






 loc = locations[0];
 *start = 0;
 if (IS_QLA24XX_TYPE(ha))
  *start = FA_FLASH_LAYOUT_ADDR_24;
 else if (IS_QLA25XX(ha))
  *start = FA_FLASH_LAYOUT_ADDR;
 else if (IS_QLA81XX(ha))
  *start = FA_FLASH_LAYOUT_ADDR_81;
 else if (IS_P3P_TYPE(ha)) {
  *start = FA_FLASH_LAYOUT_ADDR_82;
  goto end;
 } else if (IS_QLA83XX(ha) || IS_QLA27XX(ha)) {
  *start = FA_FLASH_LAYOUT_ADDR_83;
  goto end;
 } else if (IS_QLA28XX(ha)) {
  *start = FA_FLASH_LAYOUT_ADDR_28;
  goto end;
 }


 pcihdr = 0;
 do {

  qla24xx_read_flash_data(vha, dcode, pcihdr >> 2, 0x20);
  bcode = buf + (pcihdr % 4);
  if (bcode[0x0] != 0x55 || bcode[0x1] != 0xaa)
   goto end;


  pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);
  qla24xx_read_flash_data(vha, dcode, pcids >> 2, 0x20);
  bcode = buf + (pcihdr % 4);


  if (bcode[0x0] != 'P' || bcode[0x1] != 'C' ||
      bcode[0x2] != 'I' || bcode[0x3] != 'R')
   goto end;

  last_image = bcode[0x15] & BIT_7;


  pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
 } while (!last_image);


 qla24xx_read_flash_data(vha, dcode, pcihdr >> 2, sizeof(*fltl) >> 2);
 if (memcmp(fltl->sig, "QFLT", 4))
  goto end;

 wptr = (void *)req->ring;
 cnt = sizeof(*fltl) / sizeof(*wptr);
 for (chksum = 0; cnt--; wptr++)
  chksum += le16_to_cpu(*wptr);
 if (chksum) {
  ql_log(ql_log_fatal, vha, 0x0045,
      "Inconsistent FLTL detected: checksum=0x%x.\n", chksum);
  ql_dump_buffer(ql_dbg_init + ql_dbg_buffer, vha, 0x010e,
      fltl, sizeof(*fltl));
  return QLA_FUNCTION_FAILED;
 }


 loc = locations[1];
 *start = (le16_to_cpu(fltl->start_hi) << 16 |
     le16_to_cpu(fltl->start_lo)) >> 2;
end:
 ql_dbg(ql_dbg_init, vha, 0x0046,
     "FLTL[%s] = 0x%x.\n",
     loc, *start);
 return QLA_SUCCESS;
}
