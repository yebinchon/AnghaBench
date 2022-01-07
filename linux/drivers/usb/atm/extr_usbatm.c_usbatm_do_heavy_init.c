
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbatm_data {int thread_exited; int serialize; int * thread; int usb_intf; TYPE_1__* driver; int thread_started; } ;
struct TYPE_2__ {int (* heavy_init ) (struct usbatm_data*,int ) ;} ;


 int SIGTERM ;
 int allow_signal (int ) ;
 int complete (int *) ;
 int complete_and_exit (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct usbatm_data*,int ) ;
 int usbatm_atm_init (struct usbatm_data*) ;

__attribute__((used)) static int usbatm_do_heavy_init(void *arg)
{
 struct usbatm_data *instance = arg;
 int ret;

 allow_signal(SIGTERM);
 complete(&instance->thread_started);

 ret = instance->driver->heavy_init(instance, instance->usb_intf);

 if (!ret)
  ret = usbatm_atm_init(instance);

 mutex_lock(&instance->serialize);
 instance->thread = ((void*)0);
 mutex_unlock(&instance->serialize);

 complete_and_exit(&instance->thread_exited, ret);
}
