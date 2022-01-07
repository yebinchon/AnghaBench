
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kref; } ;


 int init_usb_class_mutex ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_usb_class ;
 TYPE_1__* usb_class ;

__attribute__((used)) static void destroy_usb_class(void)
{
 mutex_lock(&init_usb_class_mutex);
 kref_put(&usb_class->kref, release_usb_class);
 mutex_unlock(&init_usb_class_mutex);
}
