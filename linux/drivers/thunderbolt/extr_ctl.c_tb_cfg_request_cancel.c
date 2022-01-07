
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int err; } ;
struct tb_cfg_request {TYPE_1__ result; int work; int flags; } ;


 int TB_CFG_REQUEST_CANCELED ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int tb_cfg_request_cancel_queue ;
 int tb_cfg_request_is_active (struct tb_cfg_request*) ;
 int wait_event (int ,int) ;

void tb_cfg_request_cancel(struct tb_cfg_request *req, int err)
{
 set_bit(TB_CFG_REQUEST_CANCELED, &req->flags);
 schedule_work(&req->work);
 wait_event(tb_cfg_request_cancel_queue, !tb_cfg_request_is_active(req));
 req->result.err = err;
}
