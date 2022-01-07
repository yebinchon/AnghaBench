
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ err; } ;
struct tb_cfg_request {TYPE_1__ result; int response_size; int response; } ;
struct ctl_pkg {int buffer; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static bool tb_xdomain_copy(struct tb_cfg_request *req,
       const struct ctl_pkg *pkg)
{
 memcpy(req->response, pkg->buffer, req->response_size);
 req->result.err = 0;
 return 1;
}
