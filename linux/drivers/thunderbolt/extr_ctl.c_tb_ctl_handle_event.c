
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ctl {int (* callback ) (int ,int,int ,size_t) ;int callback_data; } ;
struct ctl_pkg {int buffer; } ;
typedef enum tb_cfg_pkg_type { ____Placeholder_tb_cfg_pkg_type } tb_cfg_pkg_type ;


 int stub1 (int ,int,int ,size_t) ;

__attribute__((used)) static bool tb_ctl_handle_event(struct tb_ctl *ctl, enum tb_cfg_pkg_type type,
    struct ctl_pkg *pkg, size_t size)
{
 return ctl->callback(ctl->callback_data, type, pkg->buffer, size);
}
