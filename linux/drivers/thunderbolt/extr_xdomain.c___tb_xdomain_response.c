
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int dummy; } ;
struct tb_cfg_request {size_t request_size; int request_type; void const* request; int copy; int match; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;


 int ENOMEM ;
 int response_ready ;
 int tb_cfg_request (struct tb_ctl*,struct tb_cfg_request*,int ,struct tb_cfg_request*) ;
 struct tb_cfg_request* tb_cfg_request_alloc () ;
 int tb_xdomain_copy ;
 int tb_xdomain_match ;

__attribute__((used)) static int __tb_xdomain_response(struct tb_ctl *ctl, const void *response,
     size_t size, enum tb_cfg_pkg_type type)
{
 struct tb_cfg_request *req;

 req = tb_cfg_request_alloc();
 if (!req)
  return -ENOMEM;

 req->match = tb_xdomain_match;
 req->copy = tb_xdomain_copy;
 req->request = response;
 req->request_size = size;
 req->request_type = type;

 return tb_cfg_request(ctl, req, response_ready, req);
}
