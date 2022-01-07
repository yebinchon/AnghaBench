
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ScsiReqBlk {int* msgout_buf; int msg_count; int state; } ;
struct DeviceCtlBlk {int dev_mode; } ;
struct AdapterCtlBlk {int config; } ;


 int EXTENDED_WDTR ;
 int HCC_WIDE_CARD ;
 int KERN_INFO ;
 int MSG_EXTENDED ;
 int NTC_DO_WIDE_NEGO ;
 int SRB_DO_WIDE_NEGO ;
 int dprintkl (int ,char*,int,int,int) ;

__attribute__((used)) static void build_wdtr(struct AdapterCtlBlk *acb, struct DeviceCtlBlk *dcb,
  struct ScsiReqBlk *srb)
{
 u8 wide = ((dcb->dev_mode & NTC_DO_WIDE_NEGO) &
     (acb->config & HCC_WIDE_CARD)) ? 1 : 0;
 u8 *ptr = srb->msgout_buf + srb->msg_count;
 if (srb->msg_count > 1) {
  dprintkl(KERN_INFO,
   "build_wdtr: msgout_buf BUSY (%i: %02x %02x)\n",
   srb->msg_count, srb->msgout_buf[0],
   srb->msgout_buf[1]);
  return;
 }
 *ptr++ = MSG_EXTENDED;
 *ptr++ = 2;
 *ptr++ = EXTENDED_WDTR;
 *ptr++ = wide;
 srb->msg_count += 4;
 srb->state |= SRB_DO_WIDE_NEGO;
}
