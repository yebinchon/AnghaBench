
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_id; } ;
struct t10_alua_lu_gp_member {int lu_gp_mem_lock; struct t10_alua_lu_gp* lu_gp; } ;
struct t10_alua_lu_gp {int lu_gp_id; } ;
struct se_portal_group {int proto_id; TYPE_1__* se_tpg_tfo; } ;
struct se_lun {int lun_rtpi; int lun_tg_pt_gp_lock; struct t10_alua_tg_pt_gp* lun_tg_pt_gp; struct se_portal_group* lun_tpg; } ;
struct TYPE_4__ {unsigned char* model; unsigned char* unit_serial; int vendor; } ;
struct se_device {int dev_flags; struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; TYPE_2__ t10_wwn; } ;
struct se_cmd {struct se_lun* se_lun; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_3__ {int (* tpg_get_tag ) (struct se_portal_group*) ;char* (* tpg_get_wwn ) (struct se_portal_group*) ;} ;


 int DF_EMULATED_VPD_UNIT_SERIAL ;
 int INQUIRY_VENDOR_LEN ;
 int memcpy (unsigned char*,int ,int ) ;
 int memset (unsigned char*,int,int ) ;
 int put_unaligned_be16 (int,unsigned char*) ;
 int spc_parse_naa_6h_vendor_specific (struct se_device*,unsigned char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 size_t sprintf (unsigned char*,char*,...) ;
 size_t strlen (unsigned char*) ;
 int strnlen (int ,int ) ;
 int stub1 (struct se_portal_group*) ;
 char* stub2 (struct se_portal_group*) ;
 char* stub3 (struct se_portal_group*) ;
 char* stub4 (struct se_portal_group*) ;
 char* stub5 (struct se_portal_group*) ;

sense_reason_t
spc_emulate_evpd_83(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;
 struct se_lun *lun = cmd->se_lun;
 struct se_portal_group *tpg = ((void*)0);
 struct t10_alua_lu_gp_member *lu_gp_mem;
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 unsigned char *prod = &dev->t10_wwn.model[0];
 u32 prod_len;
 u32 unit_serial_len, off = 0;
 u16 len = 0, id_len;

 off = 4;
 if (!(dev->dev_flags & DF_EMULATED_VPD_UNIT_SERIAL))
  goto check_t10_vend_desc;


 buf[off++] = 0x1;


 buf[off] = 0x00;


 buf[off++] |= 0x3;
 off++;


 buf[off++] = 0x10;




 buf[off++] = (0x6 << 4);




 buf[off++] = 0x01;
 buf[off++] = 0x40;
 buf[off] = (0x5 << 4);






 spc_parse_naa_6h_vendor_specific(dev, &buf[off]);

 len = 20;
 off = (len + 4);

check_t10_vend_desc:



 id_len = 8;
 prod_len = 4;
 prod_len += 8;
 prod_len += strlen(prod);
 prod_len++;

 if (dev->dev_flags & DF_EMULATED_VPD_UNIT_SERIAL) {
  unit_serial_len = strlen(&dev->t10_wwn.unit_serial[0]);
  unit_serial_len++;

  id_len += sprintf(&buf[off+12], "%s:%s", prod,
    &dev->t10_wwn.unit_serial[0]);
 }
 buf[off] = 0x2;
 buf[off+1] = 0x1;
 buf[off+2] = 0x0;

 memset(&buf[off+4], 0x20, INQUIRY_VENDOR_LEN);
 memcpy(&buf[off+4], dev->t10_wwn.vendor,
        strnlen(dev->t10_wwn.vendor, INQUIRY_VENDOR_LEN));

 id_len++;

 buf[off+3] = id_len;

 len += (id_len + 4);
 off += (id_len + 4);

 if (1) {
  struct t10_alua_lu_gp *lu_gp;
  u32 padding, scsi_name_len, scsi_target_len;
  u16 lu_gp_id = 0;
  u16 tg_pt_gp_id = 0;
  u16 tpgt;

  tpg = lun->lun_tpg;







  buf[off] = tpg->proto_id << 4;
  buf[off++] |= 0x1;
  buf[off] = 0x80;

  buf[off] |= 0x10;

  buf[off++] |= 0x4;
  off++;
  buf[off++] = 4;


  off += 2;
  put_unaligned_be16(lun->lun_rtpi, &buf[off]);
  off += 2;
  len += 8;







  spin_lock(&lun->lun_tg_pt_gp_lock);
  tg_pt_gp = lun->lun_tg_pt_gp;
  if (!tg_pt_gp) {
   spin_unlock(&lun->lun_tg_pt_gp_lock);
   goto check_lu_gp;
  }
  tg_pt_gp_id = tg_pt_gp->tg_pt_gp_id;
  spin_unlock(&lun->lun_tg_pt_gp_lock);

  buf[off] = tpg->proto_id << 4;
  buf[off++] |= 0x1;
  buf[off] = 0x80;

  buf[off] |= 0x10;

  buf[off++] |= 0x5;
  off++;
  buf[off++] = 4;
  off += 2;
  put_unaligned_be16(tg_pt_gp_id, &buf[off]);
  off += 2;
  len += 8;




check_lu_gp:
  lu_gp_mem = dev->dev_alua_lu_gp_mem;
  if (!lu_gp_mem)
   goto check_scsi_name;

  spin_lock(&lu_gp_mem->lu_gp_mem_lock);
  lu_gp = lu_gp_mem->lu_gp;
  if (!lu_gp) {
   spin_unlock(&lu_gp_mem->lu_gp_mem_lock);
   goto check_scsi_name;
  }
  lu_gp_id = lu_gp->lu_gp_id;
  spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

  buf[off++] |= 0x1;

  buf[off++] |= 0x6;
  off++;
  buf[off++] = 4;
  off += 2;
  put_unaligned_be16(lu_gp_id, &buf[off]);
  off += 2;
  len += 8;







check_scsi_name:
  buf[off] = tpg->proto_id << 4;
  buf[off++] |= 0x3;
  buf[off] = 0x80;

  buf[off] |= 0x10;

  buf[off++] |= 0x8;
  off += 2;






  tpgt = tpg->se_tpg_tfo->tpg_get_tag(tpg);
  scsi_name_len = sprintf(&buf[off], "%s,t,0x%04x",
     tpg->se_tpg_tfo->tpg_get_wwn(tpg), tpgt);
  scsi_name_len += 1 ;
  padding = ((-scsi_name_len) & 3);
  if (padding)
   scsi_name_len += padding;
  if (scsi_name_len > 256)
   scsi_name_len = 256;

  buf[off-1] = scsi_name_len;
  off += scsi_name_len;

  len += (scsi_name_len + 4);




  buf[off] = tpg->proto_id << 4;
  buf[off++] |= 0x3;
  buf[off] = 0x80;

  buf[off] |= 0x20;

  buf[off++] |= 0x8;
  off += 2;






  scsi_target_len = sprintf(&buf[off], "%s",
       tpg->se_tpg_tfo->tpg_get_wwn(tpg));
  scsi_target_len += 1 ;
  padding = ((-scsi_target_len) & 3);
  if (padding)
   scsi_target_len += padding;
  if (scsi_target_len > 256)
   scsi_target_len = 256;

  buf[off-1] = scsi_target_len;
  off += scsi_target_len;


  len += (scsi_target_len + 4);
 }
 put_unaligned_be16(len, &buf[2]);
 return 0;
}
