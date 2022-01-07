
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tb_ctl {int dummy; } ;
struct tb_cfg_result {int err; int member_0; } ;
struct tb_cfg_request {int request_size; int response_size; void* response_type; struct tb_cfg_header* response; void* request_type; struct cfg_reset_pkg* request; int copy; int match; } ;
struct tb_cfg_header {int dummy; } ;
struct cfg_reset_pkg {int header; } ;
typedef int request ;
typedef int reply ;


 int ENOMEM ;
 void* TB_CFG_PKG_RESET ;
 int tb_cfg_copy ;
 int tb_cfg_make_header (int ) ;
 int tb_cfg_match ;
 struct tb_cfg_request* tb_cfg_request_alloc () ;
 int tb_cfg_request_put (struct tb_cfg_request*) ;
 struct tb_cfg_result tb_cfg_request_sync (struct tb_ctl*,struct tb_cfg_request*,int) ;

struct tb_cfg_result tb_cfg_reset(struct tb_ctl *ctl, u64 route,
      int timeout_msec)
{
 struct cfg_reset_pkg request = { .header = tb_cfg_make_header(route) };
 struct tb_cfg_result res = { 0 };
 struct tb_cfg_header reply;
 struct tb_cfg_request *req;

 req = tb_cfg_request_alloc();
 if (!req) {
  res.err = -ENOMEM;
  return res;
 }

 req->match = tb_cfg_match;
 req->copy = tb_cfg_copy;
 req->request = &request;
 req->request_size = sizeof(request);
 req->request_type = TB_CFG_PKG_RESET;
 req->response = &reply;
 req->response_size = sizeof(reply);
 req->response_type = TB_CFG_PKG_RESET;

 res = tb_cfg_request_sync(ctl, req, timeout_msec);

 tb_cfg_request_put(req);

 return res;
}
