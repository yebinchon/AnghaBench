
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_session {int unblock_work; } ;


 int flush_workqueue (int ) ;
 int iscsi_eh_timer_workq ;
 int queue_work (int ,int *) ;

void iscsi_unblock_session(struct iscsi_cls_session *session)
{
 queue_work(iscsi_eh_timer_workq, &session->unblock_work);




 flush_workqueue(iscsi_eh_timer_workq);
}
