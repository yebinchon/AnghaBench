
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tcp_task {int r2tpool; int r2tqueue; } ;
struct iscsi_task {struct iscsi_tcp_task* dd_data; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; } ;


 int iscsi_pool_free (int *) ;
 int kfifo_free (int *) ;

void iscsi_tcp_r2tpool_free(struct iscsi_session *session)
{
 int i;

 for (i = 0; i < session->cmds_max; i++) {
  struct iscsi_task *task = session->cmds[i];
  struct iscsi_tcp_task *tcp_task = task->dd_data;

  kfifo_free(&tcp_task->r2tqueue);
  iscsi_pool_free(&tcp_task->r2tpool);
 }
}
