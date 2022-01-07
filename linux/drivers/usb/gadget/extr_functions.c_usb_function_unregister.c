
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_driver {int list; } ;


 int func_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void usb_function_unregister(struct usb_function_driver *fd)
{
 mutex_lock(&func_lock);
 list_del(&fd->list);
 mutex_unlock(&func_lock);
}
