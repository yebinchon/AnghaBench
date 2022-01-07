
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {int refcount; } ;


 int kref_put (int *,int ) ;
 int usbatm_destroy_instance ;

__attribute__((used)) static void usbatm_put_instance(struct usbatm_data *instance)
{
 kref_put(&instance->refcount, usbatm_destroy_instance);
}
