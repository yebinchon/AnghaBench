
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_cfg_request {scalar_t__ response_type; struct icm_pkg_header* request; } ;
struct icm_pkg_header {scalar_t__ code; } ;
struct TYPE_2__ {scalar_t__ eof; } ;
struct ctl_pkg {TYPE_1__ frame; struct icm_pkg_header* buffer; } ;



__attribute__((used)) static bool icm_match(const struct tb_cfg_request *req,
        const struct ctl_pkg *pkg)
{
 const struct icm_pkg_header *res_hdr = pkg->buffer;
 const struct icm_pkg_header *req_hdr = req->request;

 if (pkg->frame.eof != req->response_type)
  return 0;
 if (res_hdr->code != req_hdr->code)
  return 0;

 return 1;
}
