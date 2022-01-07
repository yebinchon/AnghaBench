
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_xdomain {TYPE_1__* tb; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;
struct TYPE_2__ {int ctl; } ;


 int __tb_xdomain_response (int ,void const*,size_t,int) ;

int tb_xdomain_response(struct tb_xdomain *xd, const void *response,
   size_t size, enum tb_cfg_pkg_type type)
{
 return __tb_xdomain_response(xd->tb->ctl, response, size, type);
}
