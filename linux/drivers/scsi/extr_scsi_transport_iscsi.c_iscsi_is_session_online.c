
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {scalar_t__ state; int lock; } ;


 scalar_t__ ISCSI_SESSION_LOGGED_IN ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int iscsi_is_session_online(struct iscsi_cls_session *session)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&session->lock, flags);
 if (session->state == ISCSI_SESSION_LOGGED_IN)
  ret = 1;
 spin_unlock_irqrestore(&session->lock, flags);
 return ret;
}
