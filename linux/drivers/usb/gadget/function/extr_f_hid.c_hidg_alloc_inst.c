
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_hid_opts {scalar_t__ minor; struct usb_function_instance func_inst; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HIDG_MINORS ;
 int config_group_init_type_name (int *,char*,int *) ;
 int ghid_cleanup () ;
 int ghid_setup (int *,int ) ;
 int hid_func_type ;
 int hidg_free_inst ;
 scalar_t__ hidg_get_minor () ;
 int hidg_ida ;
 int hidg_ida_lock ;
 scalar_t__ ida_is_empty (int *) ;
 int kfree (struct f_hid_opts*) ;
 struct f_hid_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct usb_function_instance *hidg_alloc_inst(void)
{
 struct f_hid_opts *opts;
 struct usb_function_instance *ret;
 int status = 0;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);
 mutex_init(&opts->lock);
 opts->func_inst.free_func_inst = hidg_free_inst;
 ret = &opts->func_inst;

 mutex_lock(&hidg_ida_lock);

 if (ida_is_empty(&hidg_ida)) {
  status = ghid_setup(((void*)0), HIDG_MINORS);
  if (status) {
   ret = ERR_PTR(status);
   kfree(opts);
   goto unlock;
  }
 }

 opts->minor = hidg_get_minor();
 if (opts->minor < 0) {
  ret = ERR_PTR(opts->minor);
  kfree(opts);
  if (ida_is_empty(&hidg_ida))
   ghid_cleanup();
  goto unlock;
 }
 config_group_init_type_name(&opts->func_inst.group, "", &hid_func_type);

unlock:
 mutex_unlock(&hidg_ida_lock);
 return ret;
}
