
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct iscsi_tcp_task {int queue2pool; struct iscsi_r2t_info* r2t; TYPE_1__ r2tpool; int r2tqueue; } ;
struct iscsi_task {int conn; int sc; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_r2t_info {int dummy; } ;


 int ISCSI_DBG_TCP (int ,char*) ;
 int kfifo_in (int *,void*,int) ;
 scalar_t__ kfifo_out (int *,void*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void iscsi_tcp_cleanup_task(struct iscsi_task *task)
{
 struct iscsi_tcp_task *tcp_task = task->dd_data;
 struct iscsi_r2t_info *r2t;


 if (!task->sc)
  return;

 spin_lock_bh(&tcp_task->queue2pool);

 while (kfifo_out(&tcp_task->r2tqueue, (void*)&r2t, sizeof(void*))) {
  kfifo_in(&tcp_task->r2tpool.queue, (void*)&r2t,
       sizeof(void*));
  ISCSI_DBG_TCP(task->conn, "pending r2t dropped\n");
 }

 r2t = tcp_task->r2t;
 if (r2t != ((void*)0)) {
  kfifo_in(&tcp_task->r2tpool.queue, (void*)&r2t,
       sizeof(void*));
  tcp_task->r2t = ((void*)0);
 }
 spin_unlock_bh(&tcp_task->queue2pool);
}
