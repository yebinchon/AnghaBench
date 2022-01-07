
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_task {scalar_t__ state; int dd_data; int refcount; int sc; } ;


 scalar_t__ ISCSI_TASK_PENDING ;
 int QEDI_INFO (int *,int ,char*,int ) ;
 int QEDI_LOG_IO ;
 int qedi_iscsi_unmap_sg_list (int ) ;
 int refcount_read (int *) ;

__attribute__((used)) static void qedi_cleanup_task(struct iscsi_task *task)
{
 if (!task->sc || task->state == ISCSI_TASK_PENDING) {
  QEDI_INFO(((void*)0), QEDI_LOG_IO, "Returning ref_cnt=%d\n",
     refcount_read(&task->refcount));
  return;
 }

 qedi_iscsi_unmap_sg_list(task->dd_data);
}
