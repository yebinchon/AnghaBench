
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {TYPE_1__* cm_ops; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;
struct TYPE_2__ {int (* handle_event ) (struct tb*,int,void const*,size_t) ;} ;




 int stub1 (struct tb*,int,void const*,size_t) ;
 int tb_warn (struct tb*,char*) ;
 int tb_xdomain_handle_request (struct tb*,int,void const*,size_t) ;

__attribute__((used)) static bool tb_domain_event_cb(void *data, enum tb_cfg_pkg_type type,
          const void *buf, size_t size)
{
 struct tb *tb = data;

 if (!tb->cm_ops->handle_event) {
  tb_warn(tb, "domain does not have event handler\n");
  return 1;
 }

 switch (type) {
 case 129:
 case 128:
  return tb_xdomain_handle_request(tb, type, buf, size);

 default:
  tb->cm_ops->handle_event(tb, type, buf, size);
 }

 return 1;
}
