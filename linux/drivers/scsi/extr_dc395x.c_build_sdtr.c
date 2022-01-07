
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ScsiReqBlk {int msg_count; int state; int * msgout_buf; } ;
struct DeviceCtlBlk {int dev_mode; int min_nego_period; int sync_offset; } ;
struct AdapterCtlBlk {int dummy; } ;


 int EXTENDED_SDTR ;
 int KERN_INFO ;
 int MSG_EXTENDED ;
 int NTC_DO_SYNC_NEGO ;
 int SRB_DO_SYNC_NEGO ;
 int SYNC_NEGO_OFFSET ;
 int dprintkl (int ,char*,int,int ,int ) ;

__attribute__((used)) static void build_sdtr(struct AdapterCtlBlk *acb, struct DeviceCtlBlk *dcb,
  struct ScsiReqBlk *srb)
{
 u8 *ptr = srb->msgout_buf + srb->msg_count;
 if (srb->msg_count > 1) {
  dprintkl(KERN_INFO,
   "build_sdtr: msgout_buf BUSY (%i: %02x %02x)\n",
   srb->msg_count, srb->msgout_buf[0],
   srb->msgout_buf[1]);
  return;
 }
 if (!(dcb->dev_mode & NTC_DO_SYNC_NEGO)) {
  dcb->sync_offset = 0;
  dcb->min_nego_period = 200 >> 2;
 } else if (dcb->sync_offset == 0)
  dcb->sync_offset = SYNC_NEGO_OFFSET;

 *ptr++ = MSG_EXTENDED;
 *ptr++ = 3;
 *ptr++ = EXTENDED_SDTR;
 *ptr++ = dcb->min_nego_period;
 *ptr++ = dcb->sync_offset;
 srb->msg_count += 5;
 srb->state |= SRB_DO_SYNC_NEGO;
}
