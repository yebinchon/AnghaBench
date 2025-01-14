
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WQ_MEM_RECLAIM ;
 int WQ_UNBOUND ;
 void* alloc_workqueue (char*,int,int) ;
 int destroy_workqueue (void*) ;
 int log_print (char*) ;
 void* recv_workqueue ;
 void* send_workqueue ;

__attribute__((used)) static int work_start(void)
{
 recv_workqueue = alloc_workqueue("dlm_recv",
      WQ_UNBOUND | WQ_MEM_RECLAIM, 1);
 if (!recv_workqueue) {
  log_print("can't start dlm_recv");
  return -ENOMEM;
 }

 send_workqueue = alloc_workqueue("dlm_send",
      WQ_UNBOUND | WQ_MEM_RECLAIM, 1);
 if (!send_workqueue) {
  log_print("can't start dlm_send");
  destroy_workqueue(recv_workqueue);
  return -ENOMEM;
 }

 return 0;
}
