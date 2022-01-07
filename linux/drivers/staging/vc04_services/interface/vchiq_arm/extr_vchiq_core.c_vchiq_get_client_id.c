
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_service {int client_id; } ;
typedef int VCHIQ_SERVICE_HANDLE_T ;


 struct vchiq_service* find_service_by_handle (int ) ;
 int unlock_service (struct vchiq_service*) ;

int
vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
{
 struct vchiq_service *service = find_service_by_handle(handle);
 int id;

 id = service ? service->client_id : 0;
 if (service)
  unlock_service(service);

 return id;
}
