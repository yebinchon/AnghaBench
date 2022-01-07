
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_wq {int handler; int work_q; int entry; void* data; struct mvs_info* mvi; } ;
struct mvs_info {int wq_list; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int HZ ;
 int MV_INIT_DELAYED_WORK (int *,int ,struct mvs_wq*) ;
 struct mvs_wq* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mvs_work_queue ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int mvs_handle_event(struct mvs_info *mvi, void *data, int handler)
{
 struct mvs_wq *mwq;
 int ret = 0;

 mwq = kmalloc(sizeof(struct mvs_wq), GFP_ATOMIC);
 if (mwq) {
  mwq->mvi = mvi;
  mwq->data = data;
  mwq->handler = handler;
  MV_INIT_DELAYED_WORK(&mwq->work_q, mvs_work_queue, mwq);
  list_add_tail(&mwq->entry, &mvi->wq_list);
  schedule_delayed_work(&mwq->work_q, HZ * 2);
 } else
  ret = -ENOMEM;

 return ret;
}
