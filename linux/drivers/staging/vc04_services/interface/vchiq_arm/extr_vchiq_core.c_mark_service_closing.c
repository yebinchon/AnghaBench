
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_service {int dummy; } ;


 int mark_service_closing_internal (struct vchiq_service*,int ) ;

__attribute__((used)) static void
mark_service_closing(struct vchiq_service *service)
{
 mark_service_closing_internal(service, 0);
}
