
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;
struct usb_function {int free_func; int disable; int set_alt; int setup; int unbind; int bind; int name; } ;
struct fsg_opts {int lock; int refcnt; struct fsg_common* common; } ;
struct fsg_dev {struct usb_function function; struct fsg_common* common; } ;
struct fsg_common {int dummy; } ;


 int ENOMEM ;
 struct usb_function* ERR_PTR (int ) ;
 int FSG_DRIVER_DESC ;
 int GFP_KERNEL ;
 int fsg_bind ;
 int fsg_disable ;
 int fsg_free ;
 struct fsg_opts* fsg_opts_from_func_inst (struct usb_function_instance*) ;
 int fsg_set_alt ;
 int fsg_setup ;
 int fsg_unbind ;
 struct fsg_dev* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct usb_function *fsg_alloc(struct usb_function_instance *fi)
{
 struct fsg_opts *opts = fsg_opts_from_func_inst(fi);
 struct fsg_common *common = opts->common;
 struct fsg_dev *fsg;

 fsg = kzalloc(sizeof(*fsg), GFP_KERNEL);
 if (unlikely(!fsg))
  return ERR_PTR(-ENOMEM);

 mutex_lock(&opts->lock);
 opts->refcnt++;
 mutex_unlock(&opts->lock);

 fsg->function.name = FSG_DRIVER_DESC;
 fsg->function.bind = fsg_bind;
 fsg->function.unbind = fsg_unbind;
 fsg->function.setup = fsg_setup;
 fsg->function.set_alt = fsg_set_alt;
 fsg->function.disable = fsg_disable;
 fsg->function.free_func = fsg_free;

 fsg->common = common;

 return &fsg->function;
}
