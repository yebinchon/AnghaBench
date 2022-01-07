
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsg_opts {int lock; TYPE_2__* common; scalar_t__ refcnt; } ;
struct fsg_lun_opts {size_t lun_id; int lun; } ;
struct config_item {int dummy; } ;
struct TYPE_6__ {TYPE_1__* ci_parent; } ;
struct config_group {TYPE_3__ cg_item; } ;
struct TYPE_5__ {int ** luns; } ;
struct TYPE_4__ {struct config_item* ci_parent; } ;


 int config_item_put (struct config_item*) ;
 int fsg_common_remove_lun (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fsg_lun_opts* to_fsg_lun_opts (struct config_item*) ;
 struct fsg_opts* to_fsg_opts (TYPE_3__*) ;
 int unregister_gadget_item (struct config_item*) ;

__attribute__((used)) static void fsg_lun_drop(struct config_group *group, struct config_item *item)
{
 struct fsg_lun_opts *lun_opts;
 struct fsg_opts *fsg_opts;

 lun_opts = to_fsg_lun_opts(item);
 fsg_opts = to_fsg_opts(&group->cg_item);

 mutex_lock(&fsg_opts->lock);
 if (fsg_opts->refcnt) {
  struct config_item *gadget;

  gadget = group->cg_item.ci_parent->ci_parent;
  unregister_gadget_item(gadget);
 }

 fsg_common_remove_lun(lun_opts->lun);
 fsg_opts->common->luns[lun_opts->lun_id] = ((void*)0);
 lun_opts->lun_id = 0;
 mutex_unlock(&fsg_opts->lock);

 config_item_put(item);
}
