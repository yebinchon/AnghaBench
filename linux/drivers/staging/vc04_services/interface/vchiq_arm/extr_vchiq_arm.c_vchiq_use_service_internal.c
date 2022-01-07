
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_service {int state; } ;
typedef int VCHIQ_STATUS_T ;


 int USE_TYPE_SERVICE ;
 int vchiq_use_internal (int ,struct vchiq_service*,int ) ;

VCHIQ_STATUS_T
vchiq_use_service_internal(struct vchiq_service *service)
{
 return vchiq_use_internal(service->state, service, USE_TYPE_SERVICE);
}
