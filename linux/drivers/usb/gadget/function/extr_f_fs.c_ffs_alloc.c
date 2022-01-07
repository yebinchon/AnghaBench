
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;
struct usb_function {char* name; int free_func; int resume; int suspend; int req_match; int setup; int disable; int set_alt; int unbind; int bind; } ;
struct ffs_function {struct usb_function function; } ;


 int ENOMEM ;
 int ENTER () ;
 struct usb_function* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ffs_free ;
 int ffs_func_bind ;
 int ffs_func_disable ;
 int ffs_func_req_match ;
 int ffs_func_resume ;
 int ffs_func_set_alt ;
 int ffs_func_setup ;
 int ffs_func_suspend ;
 int ffs_func_unbind ;
 struct ffs_function* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct usb_function *ffs_alloc(struct usb_function_instance *fi)
{
 struct ffs_function *func;

 ENTER();

 func = kzalloc(sizeof(*func), GFP_KERNEL);
 if (unlikely(!func))
  return ERR_PTR(-ENOMEM);

 func->function.name = "Function FS Gadget";

 func->function.bind = ffs_func_bind;
 func->function.unbind = ffs_func_unbind;
 func->function.set_alt = ffs_func_set_alt;
 func->function.disable = ffs_func_disable;
 func->function.setup = ffs_func_setup;
 func->function.req_match = ffs_func_req_match;
 func->function.suspend = ffs_func_suspend;
 func->function.resume = ffs_func_resume;
 func->function.free_func = ffs_free;

 return &func->function;
}
