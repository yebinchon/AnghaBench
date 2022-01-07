
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tcp_task {struct cxgbi_task_data* dd_data; } ;
struct iscsi_task {int hdr_itt; int * hdr; int sc; struct iscsi_tcp_task* dd_data; } ;
struct cxgbi_task_data {int * skb; } ;


 int CXGBI_DBG_ISCSI ;
 int __kfree_skb (int *) ;
 struct cxgbi_task_data* iscsi_task_cxgbi_data (struct iscsi_task*) ;
 int iscsi_tcp_cleanup_task (struct iscsi_task*) ;
 int kfree (int *) ;
 int log_debug (int,char*,struct iscsi_task*,int *,int ) ;
 int memset (struct cxgbi_task_data*,int ,int) ;
 int pr_info (char*,struct iscsi_task*,int ,struct iscsi_tcp_task*,struct cxgbi_task_data*,struct cxgbi_task_data*) ;
 int task_release_itt (struct iscsi_task*,int ) ;

void cxgbi_cleanup_task(struct iscsi_task *task)
{
 struct iscsi_tcp_task *tcp_task = task->dd_data;
 struct cxgbi_task_data *tdata = iscsi_task_cxgbi_data(task);

 if (!tcp_task || !tdata || (tcp_task->dd_data != tdata)) {
  pr_info("task 0x%p,0x%p, tcp_task 0x%p, tdata 0x%p/0x%p.\n",
   task, task->sc, tcp_task,
   tcp_task ? tcp_task->dd_data : ((void*)0), tdata);
  return;
 }

 log_debug(1 << CXGBI_DBG_ISCSI,
  "task 0x%p, skb 0x%p, itt 0x%x.\n",
  task, tdata->skb, task->hdr_itt);

 tcp_task->dd_data = ((void*)0);

 if (!task->sc)
  kfree(task->hdr);
 task->hdr = ((void*)0);


 if (tdata->skb) {
  __kfree_skb(tdata->skb);
  tdata->skb = ((void*)0);
 }

 task_release_itt(task, task->hdr_itt);
 memset(tdata, 0, sizeof(*tdata));

 iscsi_tcp_cleanup_task(task);
}
