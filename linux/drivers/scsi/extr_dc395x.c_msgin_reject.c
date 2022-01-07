
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ScsiReqBlk {int msg_count; TYPE_1__* dcb; int * msgin_buf; int state; int * msgout_buf; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_2__ {int target_lun; int target_id; } ;


 int DC395x_ENABLE_MSGOUT ;
 int KERN_INFO ;
 int MESSAGE_REJECT ;
 int SRB_MSGIN ;
 int SRB_MSGOUT ;
 int dprintkl (int ,char*,int ,int ,int ) ;

__attribute__((used)) static inline void msgin_reject(struct AdapterCtlBlk *acb,
  struct ScsiReqBlk *srb)
{
 srb->msgout_buf[0] = MESSAGE_REJECT;
 srb->msg_count = 1;
 DC395x_ENABLE_MSGOUT;
 srb->state &= ~SRB_MSGIN;
 srb->state |= SRB_MSGOUT;
 dprintkl(KERN_INFO, "msgin_reject: 0x%02x <%02i-%i>\n",
  srb->msgin_buf[0],
  srb->dcb->target_id, srb->dcb->target_lun);
}
