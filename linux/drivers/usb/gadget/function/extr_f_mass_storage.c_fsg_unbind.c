
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;
struct fsg_dev {int function; struct fsg_common* common; } ;
struct fsg_common {struct fsg_dev* fsg; int fsg_wait; } ;


 int DBG (struct fsg_dev*,char*) ;
 int FSG_STATE_CONFIG_CHANGE ;
 int __raise_exception (struct fsg_common*,int ,int *) ;
 struct fsg_dev* fsg_from_func (struct usb_function*) ;
 int usb_free_all_descriptors (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void fsg_unbind(struct usb_configuration *c, struct usb_function *f)
{
 struct fsg_dev *fsg = fsg_from_func(f);
 struct fsg_common *common = fsg->common;

 DBG(fsg, "unbind\n");
 if (fsg->common->fsg == fsg) {
  __raise_exception(fsg->common, FSG_STATE_CONFIG_CHANGE, ((void*)0));

  wait_event(common->fsg_wait, common->fsg != fsg);
 }

 usb_free_all_descriptors(&fsg->function);
}
