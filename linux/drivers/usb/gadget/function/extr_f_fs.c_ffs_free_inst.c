
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;
struct f_fs_opts {int dev; } ;


 int _ffs_free_dev (int ) ;
 int ffs_dev_lock () ;
 int ffs_dev_unlock () ;
 int kfree (struct f_fs_opts*) ;
 struct f_fs_opts* to_f_fs_opts (struct usb_function_instance*) ;

__attribute__((used)) static void ffs_free_inst(struct usb_function_instance *f)
{
 struct f_fs_opts *opts;

 opts = to_f_fs_opts(f);
 ffs_dev_lock();
 _ffs_free_dev(opts->dev);
 ffs_dev_unlock();
 kfree(opts);
}
