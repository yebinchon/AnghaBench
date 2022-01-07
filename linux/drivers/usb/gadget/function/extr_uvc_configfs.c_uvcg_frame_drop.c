
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvcg_format {int num_frames; } ;
struct f_uvc_opts {int lock; } ;
struct config_item {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ci_parent; } ;
struct config_group {TYPE_3__ cg_item; } ;
struct TYPE_5__ {TYPE_1__* ci_parent; } ;
struct TYPE_4__ {struct config_item* ci_parent; } ;


 int config_item_put (struct config_item*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;
 struct uvcg_format* to_uvcg_format (TYPE_3__*) ;

__attribute__((used)) static void uvcg_frame_drop(struct config_group *group, struct config_item *item)
{
 struct uvcg_format *fmt;
 struct f_uvc_opts *opts;
 struct config_item *opts_item;

 opts_item = group->cg_item.ci_parent->ci_parent->ci_parent;
 opts = to_f_uvc_opts(opts_item);

 mutex_lock(&opts->lock);
 fmt = to_uvcg_format(&group->cg_item);
 --fmt->num_frames;
 mutex_unlock(&opts->lock);

 config_item_put(item);
}
