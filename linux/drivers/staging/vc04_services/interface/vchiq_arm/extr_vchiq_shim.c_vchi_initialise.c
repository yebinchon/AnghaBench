
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef scalar_t__ VCHI_INSTANCE_T ;
typedef int VCHIQ_STATUS_T ;
typedef scalar_t__ VCHIQ_INSTANCE_T ;


 int vchiq_initialise (scalar_t__*) ;
 int vchiq_status_to_vchi (int ) ;

int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle)
{
 VCHIQ_INSTANCE_T instance;
 VCHIQ_STATUS_T status;

 status = vchiq_initialise(&instance);

 *instance_handle = (VCHI_INSTANCE_T)instance;

 return vchiq_status_to_vchi(status);
}
