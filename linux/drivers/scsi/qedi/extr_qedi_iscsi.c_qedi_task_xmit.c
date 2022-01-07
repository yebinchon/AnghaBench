
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct qedi_conn {int dummy; } ;
struct qedi_cmd {int use_slowpath; int io_cmd_in_list; struct scsi_cmnd* scsi_cmd; int io_cmd; struct iscsi_task* task; struct qedi_conn* conn; scalar_t__ state; } ;
struct iscsi_task {struct scsi_cmnd* sc; struct qedi_cmd* dd_data; struct iscsi_conn* conn; } ;
struct iscsi_conn {struct qedi_conn* dd_data; } ;


 int INIT_LIST_HEAD (int *) ;
 int qedi_iscsi_send_ioreq (struct iscsi_task*) ;
 int qedi_mtask_xmit (struct iscsi_conn*,struct iscsi_task*) ;

__attribute__((used)) static int qedi_task_xmit(struct iscsi_task *task)
{
 struct iscsi_conn *conn = task->conn;
 struct qedi_conn *qedi_conn = conn->dd_data;
 struct qedi_cmd *cmd = task->dd_data;
 struct scsi_cmnd *sc = task->sc;

 cmd->state = 0;
 cmd->task = ((void*)0);
 cmd->use_slowpath = 0;
 cmd->conn = qedi_conn;
 cmd->task = task;
 cmd->io_cmd_in_list = 0;
 INIT_LIST_HEAD(&cmd->io_cmd);

 if (!sc)
  return qedi_mtask_xmit(conn, task);

 cmd->scsi_cmd = sc;
 return qedi_iscsi_send_ioreq(task);
}
