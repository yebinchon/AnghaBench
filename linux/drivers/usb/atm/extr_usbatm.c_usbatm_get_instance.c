
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbatm_data {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static void usbatm_get_instance(struct usbatm_data *instance)
{
 kref_get(&instance->refcount);
}
