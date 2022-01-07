
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int VCHI_INSTANCE_T ;
typedef int VCHIQ_INSTANCE_T ;


 int vchiq_connect (int ) ;

int32_t vchi_connect(VCHI_INSTANCE_T instance_handle)
{
 VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;

 return vchiq_connect(instance);
}
