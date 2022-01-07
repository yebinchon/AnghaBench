
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;
typedef int arr ;


 int RL_BUCKET_ELEMS ;
 int SCSI_W_LUN_REPORT_LUNS ;
 int SDEB_IN_CDB ;
 int check_condition_result ;
 int clear_luns_changed_on_target (struct sdebug_dev_info*) ;
 unsigned int get_unaligned_be32 (unsigned char*) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int memset (int *,int ,int) ;
 int mk_sense_invalid_fld (struct scsi_cmnd*,int ,int,int) ;
 int p_fill_from_dev_buffer (struct scsi_cmnd*,int *,int,unsigned int) ;
 int pr_debug (char*,unsigned char,...) ;
 int pr_err (char*,unsigned int) ;
 int put_unaligned_be32 (unsigned int,int *) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 unsigned int sdebug_max_luns ;
 scalar_t__ sdebug_no_lun_0 ;

__attribute__((used)) static int resp_report_luns(struct scsi_cmnd *scp,
       struct sdebug_dev_info *devip)
{
 unsigned char *cmd = scp->cmnd;
 unsigned int alloc_len;
 unsigned char select_report;
 u64 lun;
 struct scsi_lun *lun_p;
 u8 arr[RL_BUCKET_ELEMS * sizeof(struct scsi_lun)];
 unsigned int lun_cnt;
 unsigned int wlun_cnt;
 unsigned int tlun_cnt;
 unsigned int rlen;
 int k, j, n, res;
 unsigned int off_rsp = 0;
 const int sz_lun = sizeof(struct scsi_lun);

 clear_luns_changed_on_target(devip);

 select_report = cmd[2];
 alloc_len = get_unaligned_be32(cmd + 6);

 if (alloc_len < 4) {
  pr_err("alloc len too small %d\n", alloc_len);
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 6, -1);
  return check_condition_result;
 }

 switch (select_report) {
 case 0:
  lun_cnt = sdebug_max_luns;
  wlun_cnt = 0;
  break;
 case 1:
  lun_cnt = 0;
  wlun_cnt = 1;
  break;
 case 2:
  lun_cnt = sdebug_max_luns;
  wlun_cnt = 1;
  break;
 case 0x10:
 case 0x11:
 case 0x12:
 default:
  pr_debug("select report invalid %d\n", select_report);
  mk_sense_invalid_fld(scp, SDEB_IN_CDB, 2, -1);
  return check_condition_result;
 }

 if (sdebug_no_lun_0 && (lun_cnt > 0))
  --lun_cnt;

 tlun_cnt = lun_cnt + wlun_cnt;
 rlen = tlun_cnt * sz_lun;
 scsi_set_resid(scp, scsi_bufflen(scp));
 pr_debug("select_report %d luns = %d wluns = %d no_lun0 %d\n",
   select_report, lun_cnt, wlun_cnt, sdebug_no_lun_0);


 lun = sdebug_no_lun_0 ? 1 : 0;
 for (k = 0, j = 0, res = 0; 1; ++k, j = 0) {
  memset(arr, 0, sizeof(arr));
  lun_p = (struct scsi_lun *)&arr[0];
  if (k == 0) {
   put_unaligned_be32(rlen, &arr[0]);
   ++lun_p;
   j = 1;
  }
  for ( ; j < RL_BUCKET_ELEMS; ++j, ++lun_p) {
   if ((k * RL_BUCKET_ELEMS) + j > lun_cnt)
    break;
   int_to_scsilun(lun++, lun_p);
  }
  if (j < RL_BUCKET_ELEMS)
   break;
  n = j * sz_lun;
  res = p_fill_from_dev_buffer(scp, arr, n, off_rsp);
  if (res)
   return res;
  off_rsp += n;
 }
 if (wlun_cnt) {
  int_to_scsilun(SCSI_W_LUN_REPORT_LUNS, lun_p);
  ++j;
 }
 if (j > 0)
  res = p_fill_from_dev_buffer(scp, arr, j * sz_lun, off_rsp);
 return res;
}
