
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * ptr; } ;
struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__ SCp; } ;
struct iscsi_task {int state; struct scsi_cmnd* sc; int itt; struct iscsi_conn* conn; } ;
struct TYPE_5__ {int queue; } ;
struct iscsi_session {TYPE_2__ cmdpool; TYPE_1__* tt; } ;
struct iscsi_conn {struct iscsi_task* login_task; struct iscsi_session* session; } ;
struct TYPE_4__ {int (* cleanup_task ) (struct iscsi_task*) ;} ;


 int ISCSI_DBG_SESSION (struct iscsi_session*,char*,int ,int,struct scsi_cmnd*) ;
 int ISCSI_TASK_FREE ;
 int ISCSI_TASK_REQUEUE_SCSIQ ;
 int kfifo_in (int *,void*,int) ;
 int stub1 (struct iscsi_task*) ;
 int stub2 (struct scsi_cmnd*) ;

__attribute__((used)) static void iscsi_free_task(struct iscsi_task *task)
{
 struct iscsi_conn *conn = task->conn;
 struct iscsi_session *session = conn->session;
 struct scsi_cmnd *sc = task->sc;
 int oldstate = task->state;

 ISCSI_DBG_SESSION(session, "freeing task itt 0x%x state %d sc %p\n",
     task->itt, task->state, task->sc);

 session->tt->cleanup_task(task);
 task->state = ISCSI_TASK_FREE;
 task->sc = ((void*)0);



 if (conn->login_task == task)
  return;

 kfifo_in(&session->cmdpool.queue, (void*)&task, sizeof(void*));

 if (sc) {

  sc->SCp.ptr = ((void*)0);




  if (oldstate != ISCSI_TASK_REQUEUE_SCSIQ)
   sc->scsi_done(sc);
 }
}
