
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ccb_info_result {scalar_t__ state; int q_pos; int q_num; int inst_num; } ;


 scalar_t__ DAX_CCB_ENQUEUED ;
 unsigned long HV_EOK ;
 int dax_dbg (char*,char*,...) ;
 char* dax_hv_errno (unsigned long,int*) ;
 int dax_info_dbg (char*,int ,scalar_t__,...) ;
 unsigned long sun4v_ccb_info (int ,struct ccb_info_result*) ;

__attribute__((used)) static int dax_ccb_info(u64 ca, struct ccb_info_result *info)
{
 unsigned long hv_ret;
 char *err_str;
 int ret = 0;

 dax_dbg("attempting info on ca_ra 0x%llx", ca);
 hv_ret = sun4v_ccb_info(ca, info);

 if (hv_ret == HV_EOK) {
  dax_info_dbg("HV_EOK (ca_ra 0x%llx): %d", ca, info->state);
  if (info->state == DAX_CCB_ENQUEUED) {
   dax_info_dbg("dax_unit %d, queue_num %d, queue_pos %d",
         info->inst_num, info->q_num, info->q_pos);
  }
 } else {
  err_str = dax_hv_errno(hv_ret, &ret);
  dax_dbg("%s (ca_ra 0x%llx)", err_str, ca);
 }

 return ret;
}
