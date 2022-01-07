
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;
struct fsg_opts {int common; } ;


 int fsg_common_release (int ) ;
 struct fsg_opts* fsg_opts_from_func_inst (struct usb_function_instance*) ;
 int kfree (struct fsg_opts*) ;

__attribute__((used)) static void fsg_free_inst(struct usb_function_instance *fi)
{
 struct fsg_opts *opts;

 opts = fsg_opts_from_func_inst(fi);
 fsg_common_release(opts->common);
 kfree(opts);
}
