
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int VCHI_INSTANCE_T ;
typedef int VCHIQ_INSTANCE_T ;


 int vchiq_shutdown (int ) ;
 int vchiq_status_to_vchi (int ) ;

int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
{
 VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;

 return vchiq_status_to_vchi(vchiq_shutdown(instance));
}
