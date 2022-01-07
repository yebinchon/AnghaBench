
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct fsg_dev {int common; } ;


 int FSG_STATE_CONFIG_CHANGE ;
 int __raise_exception (int ,int ,int *) ;
 struct fsg_dev* fsg_from_func (struct usb_function*) ;

__attribute__((used)) static void fsg_disable(struct usb_function *f)
{
 struct fsg_dev *fsg = fsg_from_func(f);

 __raise_exception(fsg->common, FSG_STATE_CONFIG_CHANGE, ((void*)0));
}
