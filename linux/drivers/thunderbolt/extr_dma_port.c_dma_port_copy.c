
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_request {int response_size; int response; } ;
struct ctl_pkg {int buffer; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static bool dma_port_copy(struct tb_cfg_request *req, const struct ctl_pkg *pkg)
{
 memcpy(req->response, pkg->buffer, req->response_size);
 return 1;
}
