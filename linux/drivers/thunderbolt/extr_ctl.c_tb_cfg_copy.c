
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_result {int err; } ;
struct tb_cfg_request {struct tb_cfg_result result; int response_size; int response; int request; int response_type; } ;
struct ctl_pkg {int buffer; } ;


 int memcpy (int ,int ,int ) ;
 struct tb_cfg_result parse_header (struct ctl_pkg const*,int ,int ,int ) ;
 int tb_cfg_get_route (int ) ;

__attribute__((used)) static bool tb_cfg_copy(struct tb_cfg_request *req, const struct ctl_pkg *pkg)
{
 struct tb_cfg_result res;


 res = parse_header(pkg, req->response_size, req->response_type,
      tb_cfg_get_route(req->request));
 if (!res.err)
  memcpy(req->response, pkg->buffer, req->response_size);

 req->result = res;


 return 1;
}
