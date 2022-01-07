
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int DAX_CCB_RETRIES ;
 int DAX_CCB_USEC ;
 int EAGAIN ;
 unsigned long HV_EOK ;
 int dax_dbg (char*,char*,...) ;
 char* dax_hv_errno (unsigned long,int*) ;
 int dax_info_dbg (char*,int,...) ;
 unsigned long sun4v_ccb_kill (int ,int *) ;
 int udelay (int ) ;

__attribute__((used)) static int dax_ccb_kill(u64 ca, u16 *kill_res)
{
 unsigned long hv_ret;
 int count, ret = 0;
 char *err_str;

 for (count = 0; count < DAX_CCB_RETRIES; count++) {
  dax_dbg("attempting kill on ca_ra 0x%llx", ca);
  hv_ret = sun4v_ccb_kill(ca, kill_res);

  if (hv_ret == HV_EOK) {
   dax_info_dbg("HV_EOK (ca_ra 0x%llx): %d", ca,
         *kill_res);
  } else {
   err_str = dax_hv_errno(hv_ret, &ret);
   dax_dbg("%s (ca_ra 0x%llx)", err_str, ca);
  }

  if (ret != -EAGAIN)
   return ret;
  dax_info_dbg("ccb_kill count = %d", count);
  udelay(DAX_CCB_USEC);
 }

 return -EAGAIN;
}
