
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int device; } ;
struct iscsi_session {int dummy; } ;
struct iscsi_cls_session {scalar_t__ state; int lock; struct iscsi_session* dd_data; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_DONE ;
 int BLK_EH_RESET_TIMER ;
 scalar_t__ ISCSI_SESSION_FAILED ;
 int scsi_target (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iscsi_cls_session* starget_to_session (int ) ;

__attribute__((used)) static enum blk_eh_timer_return qla4xxx_eh_cmd_timed_out(struct scsi_cmnd *sc)
{
 struct iscsi_cls_session *session;
 struct iscsi_session *sess;
 unsigned long flags;
 enum blk_eh_timer_return ret = BLK_EH_DONE;

 session = starget_to_session(scsi_target(sc->device));
 sess = session->dd_data;

 spin_lock_irqsave(&session->lock, flags);
 if (session->state == ISCSI_SESSION_FAILED)
  ret = BLK_EH_RESET_TIMER;
 spin_unlock_irqrestore(&session->lock, flags);

 return ret;
}
