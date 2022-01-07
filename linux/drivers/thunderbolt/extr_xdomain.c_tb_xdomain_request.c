
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_xdomain {TYPE_1__* tb; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;
struct TYPE_2__ {int ctl; } ;


 int __tb_xdomain_request (int ,void const*,size_t,int,void*,size_t,int,unsigned int) ;

int tb_xdomain_request(struct tb_xdomain *xd, const void *request,
 size_t request_size, enum tb_cfg_pkg_type request_type,
 void *response, size_t response_size,
 enum tb_cfg_pkg_type response_type, unsigned int timeout_msec)
{
 return __tb_xdomain_request(xd->tb->ctl, request, request_size,
        request_type, response, response_size,
        response_type, timeout_msec);
}
