
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int request_queue_lock; } ;
struct tb_cfg_request {int flags; int list; struct tb_ctl* ctl; } ;


 int TB_CFG_REQUEST_ACTIVE ;
 int TB_CFG_REQUEST_CANCELED ;
 int clear_bit (int ,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tb_cfg_request_cancel_queue ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void tb_cfg_request_dequeue(struct tb_cfg_request *req)
{
 struct tb_ctl *ctl = req->ctl;

 mutex_lock(&ctl->request_queue_lock);
 list_del(&req->list);
 clear_bit(TB_CFG_REQUEST_ACTIVE, &req->flags);
 if (test_bit(TB_CFG_REQUEST_CANCELED, &req->flags))
  wake_up(&tb_cfg_request_cancel_queue);
 mutex_unlock(&ctl->request_queue_lock);
}
