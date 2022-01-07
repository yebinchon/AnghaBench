
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {int msg_count; int state; int * msgout_buf; } ;
struct AdapterCtlBlk {int dummy; } ;


 int ABORT ;
 int DC395x_ENABLE_MSGOUT ;
 int SRB_MSGIN ;
 int SRB_MSGOUT ;

__attribute__((used)) static inline void enable_msgout_abort(struct AdapterCtlBlk *acb,
  struct ScsiReqBlk *srb)
{
 srb->msgout_buf[0] = ABORT;
 srb->msg_count = 1;
 DC395x_ENABLE_MSGOUT;
 srb->state &= ~SRB_MSGIN;
 srb->state |= SRB_MSGOUT;
}
