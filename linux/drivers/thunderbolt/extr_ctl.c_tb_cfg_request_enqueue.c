
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int request_queue_lock; int request_queue; int running; } ;
struct tb_cfg_request {int flags; int list; struct tb_ctl* ctl; } ;


 int ENOTCONN ;
 int TB_CFG_REQUEST_ACTIVE ;
 int WARN_ON (struct tb_ctl*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 struct tb_ctl* test_bit (int ,int *) ;

__attribute__((used)) static int tb_cfg_request_enqueue(struct tb_ctl *ctl,
      struct tb_cfg_request *req)
{
 WARN_ON(test_bit(TB_CFG_REQUEST_ACTIVE, &req->flags));
 WARN_ON(req->ctl);

 mutex_lock(&ctl->request_queue_lock);
 if (!ctl->running) {
  mutex_unlock(&ctl->request_queue_lock);
  return -ENOTCONN;
 }
 req->ctl = ctl;
 list_add_tail(&req->list, &ctl->request_queue);
 set_bit(TB_CFG_REQUEST_ACTIVE, &req->flags);
 mutex_unlock(&ctl->request_queue_lock);
 return 0;
}
