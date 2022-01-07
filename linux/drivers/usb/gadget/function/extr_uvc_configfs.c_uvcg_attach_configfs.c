
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int group; } ;
struct f_uvc_opts {TYPE_1__ func_inst; } ;
struct TYPE_5__ {int type; int name; } ;


 int config_group_init_type_name (int *,int ,int *) ;
 int config_group_put (int *) ;
 TYPE_2__ uvc_func_type ;
 int uvcg_config_create_children (int *,TYPE_2__*) ;

int uvcg_attach_configfs(struct f_uvc_opts *opts)
{
 int ret;

 config_group_init_type_name(&opts->func_inst.group, uvc_func_type.name,
        &uvc_func_type.type);

 ret = uvcg_config_create_children(&opts->func_inst.group,
       &uvc_func_type);
 if (ret < 0)
  config_group_put(&opts->func_inst.group);

 return ret;
}
