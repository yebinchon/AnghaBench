
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {int state; struct DeviceCtlBlk* dcb; } ;
struct DeviceCtlBlk {int sync_mode; int min_nego_period; scalar_t__ sync_offset; int target_lun; int target_id; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DBG_0 ;
 int DC395x_ENABLE_MSGOUT ;
 int KERN_DEBUG ;
 int SRB_DO_SYNC_NEGO ;
 int SYNC_NEGO_DONE ;
 int SYNC_NEGO_ENABLE ;
 int WIDE_NEGO_DONE ;
 int WIDE_NEGO_ENABLE ;
 int build_wdtr (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int dprintkdbg (int ,char*) ;
 int dprintkl (int ,char*,int ,int ) ;
 int reprogram_regs (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ;

__attribute__((used)) static void msgin_set_async(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb)
{
 struct DeviceCtlBlk *dcb = srb->dcb;
 dprintkl(KERN_DEBUG, "msgin_set_async: No sync transfers <%02i-%i>\n",
  dcb->target_id, dcb->target_lun);

 dcb->sync_mode &= ~(SYNC_NEGO_ENABLE);
 dcb->sync_mode |= SYNC_NEGO_DONE;

 dcb->sync_offset = 0;
 dcb->min_nego_period = 200 >> 2;
 srb->state &= ~SRB_DO_SYNC_NEGO;
 reprogram_regs(acb, dcb);
 if ((dcb->sync_mode & WIDE_NEGO_ENABLE)
     && !(dcb->sync_mode & WIDE_NEGO_DONE)) {
  build_wdtr(acb, dcb, srb);
  DC395x_ENABLE_MSGOUT;
  dprintkdbg(DBG_0, "msgin_set_async(rej): Try WDTR anyway\n");
 }
}
