
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fourcc; } ;
struct vchiq_service {TYPE_1__ base; } ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 struct vchiq_service* handle_to_service (int ) ;

int
vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T handle)
{
 struct vchiq_service *service = handle_to_service(handle);

 return service ? service->base.fourcc : 0;
}
