
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ffs_dev {int desc_ready; struct f_fs_opts* opts; int (* ffs_closed_callback ) (struct ffs_data*) ;int * ffs_data; } ;
struct ffs_data {int flags; struct ffs_dev* private_data; } ;
struct TYPE_6__ {TYPE_1__* ci_parent; int ci_kref; } ;
struct TYPE_7__ {TYPE_2__ cg_item; } ;
struct TYPE_8__ {TYPE_3__ group; } ;
struct f_fs_opts {TYPE_4__ func_inst; scalar_t__ no_configfs; } ;
struct config_item {int dummy; } ;
struct TYPE_5__ {struct config_item* ci_parent; } ;


 int ENTER () ;
 int FFS_FL_BOUND ;
 int FFS_FL_CALL_CLOSED_CALLBACK ;
 int ffs_dev_lock () ;
 int ffs_dev_unlock () ;
 int kref_read (int *) ;
 int stub1 (struct ffs_data*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int unregister_gadget_item (struct config_item*) ;

__attribute__((used)) static void ffs_closed(struct ffs_data *ffs)
{
 struct ffs_dev *ffs_obj;
 struct f_fs_opts *opts;
 struct config_item *ci;

 ENTER();
 ffs_dev_lock();

 ffs_obj = ffs->private_data;
 if (!ffs_obj)
  goto done;

 ffs_obj->desc_ready = 0;
 ffs_obj->ffs_data = ((void*)0);

 if (test_and_clear_bit(FFS_FL_CALL_CLOSED_CALLBACK, &ffs->flags) &&
     ffs_obj->ffs_closed_callback)
  ffs_obj->ffs_closed_callback(ffs);

 if (ffs_obj->opts)
  opts = ffs_obj->opts;
 else
  goto done;

 if (opts->no_configfs || !opts->func_inst.group.cg_item.ci_parent
     || !kref_read(&opts->func_inst.group.cg_item.ci_kref))
  goto done;

 ci = opts->func_inst.group.cg_item.ci_parent->ci_parent;
 ffs_dev_unlock();

 if (test_bit(FFS_FL_BOUND, &ffs->flags))
  unregister_gadget_item(ci);
 return;
done:
 ffs_dev_unlock();
}
