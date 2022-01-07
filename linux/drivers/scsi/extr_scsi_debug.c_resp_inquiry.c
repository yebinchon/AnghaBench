
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdebug_dev_info {scalar_t__ lun; int channel; int target; int lu_name; TYPE_3__* sdbg_host; } ;
struct scsi_cmnd {unsigned char* cmnd; TYPE_1__* device; } ;
struct TYPE_6__ {TYPE_2__* shost; } ;
struct TYPE_5__ {int host_no; } ;
struct TYPE_4__ {int lun; } ;


 int DID_REQUEUE ;
 int GFP_ATOMIC ;
 int SDEBUG_LONG_INQ_SZ ;
 scalar_t__ SDEBUG_LUN_0_VAL ;
 int SDEBUG_MAX_INQ_ARR_SZ ;
 int SDEB_IN_CDB ;
 scalar_t__ T10_PI_TYPE3_PROTECTION ;
 int TYPE_DISK ;
 int TYPE_TAPE ;
 unsigned char TYPE_WLUN ;
 int check_condition_result ;
 int fill_from_dev_buffer (struct scsi_cmnd*,unsigned char*,int) ;
 int get_unaligned_be16 (unsigned char*) ;
 scalar_t__ have_dif_prot ;
 unsigned char inquiry_vpd_83 (unsigned char*,int,int,int,char*,int,int *) ;
 unsigned char inquiry_vpd_84 (unsigned char*) ;
 unsigned char inquiry_vpd_85 (unsigned char*) ;
 unsigned char inquiry_vpd_88 (unsigned char*,int) ;
 int inquiry_vpd_89 (unsigned char*) ;
 unsigned char inquiry_vpd_b0 (unsigned char*) ;
 unsigned char inquiry_vpd_b1 (unsigned char*) ;
 unsigned char inquiry_vpd_b2 (unsigned char*) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int,int ) ;
 int memcpy (unsigned char*,char*,int) ;
 int min (int,int) ;
 int mk_sense_invalid_fld (struct scsi_cmnd*,int ,int,int) ;
 int put_unaligned_be16 (int,unsigned char*) ;
 int scnprintf (char*,int,char*,int) ;
 int scsi_is_wlun (int ) ;
 scalar_t__ sdebug_dif ;
 char* sdebug_inq_product_id ;
 char* sdebug_inq_product_rev ;
 char* sdebug_inq_vendor_id ;
 scalar_t__ sdebug_no_lun_0 ;
 int sdebug_ptype ;
 scalar_t__ sdebug_removable ;
 unsigned char sdebug_scsi_level ;
 char* sdebug_version_date ;
 scalar_t__ sdebug_vpd_use_hostno ;

__attribute__((used)) static int resp_inquiry(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
{
 unsigned char pq_pdt;
 unsigned char *arr;
 unsigned char *cmd = scp->cmnd;
 int alloc_len, n, ret;
 bool have_wlun, is_disk;

 alloc_len = get_unaligned_be16(cmd + 3);
 arr = kzalloc(SDEBUG_MAX_INQ_ARR_SZ, GFP_ATOMIC);
 if (! arr)
  return DID_REQUEUE << 16;
 is_disk = (sdebug_ptype == TYPE_DISK);
 have_wlun = scsi_is_wlun(scp->device->lun);
 if (have_wlun)
  pq_pdt = TYPE_WLUN;
 else if (sdebug_no_lun_0 && (devip->lun == SDEBUG_LUN_0_VAL))
  pq_pdt = 0x7f;
 else
  pq_pdt = (sdebug_ptype & 0x1f);
 arr[0] = pq_pdt;
 if (0x2 & cmd[1]) {
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 1, 1);
  kfree(arr);
  return check_condition_result;
 } else if (0x1 & cmd[1]) {
  int lu_id_num, port_group_id, target_dev_id, len;
  char lu_id_str[6];
  int host_no = devip->sdbg_host->shost->host_no;

  port_group_id = (((host_no + 1) & 0x7f) << 8) +
      (devip->channel & 0x7f);
  if (sdebug_vpd_use_hostno == 0)
   host_no = 0;
  lu_id_num = have_wlun ? -1 : (((host_no + 1) * 2000) +
       (devip->target * 1000) + devip->lun);
  target_dev_id = ((host_no + 1) * 2000) +
     (devip->target * 1000) - 3;
  len = scnprintf(lu_id_str, 6, "%d", lu_id_num);
  if (0 == cmd[2]) {
   arr[1] = cmd[2];
   n = 4;
   arr[n++] = 0x0;
   arr[n++] = 0x80;
   arr[n++] = 0x83;
   arr[n++] = 0x84;
   arr[n++] = 0x85;
   arr[n++] = 0x86;
   arr[n++] = 0x87;
   arr[n++] = 0x88;
   if (is_disk) {
    arr[n++] = 0x89;
    arr[n++] = 0xb0;
    arr[n++] = 0xb1;
    arr[n++] = 0xb2;
   }
   arr[3] = n - 4;
  } else if (0x80 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = len;
   memcpy(&arr[4], lu_id_str, len);
  } else if (0x83 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_83(&arr[4], port_group_id,
      target_dev_id, lu_id_num,
      lu_id_str, len,
      &devip->lu_name);
  } else if (0x84 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_84(&arr[4]);
  } else if (0x85 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_85(&arr[4]);
  } else if (0x86 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = 0x3c;
   if (sdebug_dif == T10_PI_TYPE3_PROTECTION)
    arr[4] = 0x4;
   else if (have_dif_prot)
    arr[4] = 0x5;
   else
    arr[4] = 0x0;
   arr[5] = 0x7;
  } else if (0x87 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = 0x8;
   arr[4] = 0x2;
   arr[6] = 0x80;
   arr[8] = 0x18;
   arr[10] = 0x82;
  } else if (0x88 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_88(&arr[4], target_dev_id);
  } else if (is_disk && 0x89 == cmd[2]) {
   arr[1] = cmd[2];
   n = inquiry_vpd_89(&arr[4]);
   put_unaligned_be16(n, arr + 2);
  } else if (is_disk && 0xb0 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_b0(&arr[4]);
  } else if (is_disk && 0xb1 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_b1(&arr[4]);
  } else if (is_disk && 0xb2 == cmd[2]) {
   arr[1] = cmd[2];
   arr[3] = inquiry_vpd_b2(&arr[4]);
  } else {
   mk_sense_invalid_fld(scp, SDEB_IN_CDB, 2, -1);
   kfree(arr);
   return check_condition_result;
  }
  len = min(get_unaligned_be16(arr + 2) + 4, alloc_len);
  ret = fill_from_dev_buffer(scp, arr,
       min(len, SDEBUG_MAX_INQ_ARR_SZ));
  kfree(arr);
  return ret;
 }

 arr[1] = sdebug_removable ? 0x80 : 0;
 arr[2] = sdebug_scsi_level;
 arr[3] = 2;
 arr[4] = SDEBUG_LONG_INQ_SZ - 5;
 arr[5] = (int)have_dif_prot;
 if (sdebug_vpd_use_hostno == 0)
  arr[5] |= 0x10;
 arr[6] = 0x10;

 arr[7] = 0xa;
 memcpy(&arr[8], sdebug_inq_vendor_id, 8);
 memcpy(&arr[16], sdebug_inq_product_id, 16);
 memcpy(&arr[32], sdebug_inq_product_rev, 4);

 memcpy(&arr[36], sdebug_version_date, 8);

 put_unaligned_be16(0xc0, arr + 58);
 put_unaligned_be16(0x5c0, arr + 60);
 n = 62;
 if (is_disk) {
  put_unaligned_be16(0x600, arr + n);
  n += 2;
 } else if (sdebug_ptype == TYPE_TAPE) {
  put_unaligned_be16(0x525, arr + n);
  n += 2;
 }
 put_unaligned_be16(0x2100, arr + n);
 ret = fill_from_dev_buffer(scp, arr,
       min(alloc_len, SDEBUG_LONG_INQ_SZ));
 kfree(arr);
 return ret;
}
