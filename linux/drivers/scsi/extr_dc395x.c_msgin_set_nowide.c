
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {int state; struct DeviceCtlBlk* dcb; } ;
struct DeviceCtlBlk {int sync_mode; int sync_period; int target_id; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DBG_0 ;
 int DBG_1 ;
 int DC395x_ENABLE_MSGOUT ;
 int SRB_DO_WIDE_NEGO ;
 int SYNC_NEGO_DONE ;
 int SYNC_NEGO_ENABLE ;
 int WIDE_NEGO_DONE ;
 int WIDE_NEGO_ENABLE ;
 int WIDE_SYNC ;
 int build_sdtr (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int dprintkdbg (int ,char*,...) ;
 int reprogram_regs (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ;

__attribute__((used)) static inline void msgin_set_nowide(struct AdapterCtlBlk *acb,
  struct ScsiReqBlk *srb)
{
 struct DeviceCtlBlk *dcb = srb->dcb;
 dprintkdbg(DBG_1, "msgin_set_nowide: <%02i>\n", dcb->target_id);

 dcb->sync_period &= ~WIDE_SYNC;
 dcb->sync_mode &= ~(WIDE_NEGO_ENABLE);
 dcb->sync_mode |= WIDE_NEGO_DONE;
 srb->state &= ~SRB_DO_WIDE_NEGO;
 reprogram_regs(acb, dcb);
 if ((dcb->sync_mode & SYNC_NEGO_ENABLE)
     && !(dcb->sync_mode & SYNC_NEGO_DONE)) {
  build_sdtr(acb, dcb, srb);
  DC395x_ENABLE_MSGOUT;
  dprintkdbg(DBG_0, "msgin_set_nowide: Rejected. Try SDTR anyway\n");
 }
}
