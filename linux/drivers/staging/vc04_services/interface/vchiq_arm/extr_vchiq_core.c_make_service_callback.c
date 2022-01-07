
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* callback ) (size_t,struct vchiq_header*,int ,void*) ;} ;
struct vchiq_service {int handle; TYPE_1__* state; TYPE_2__ base; int localport; } ;
struct vchiq_header {int dummy; } ;
typedef scalar_t__ VCHIQ_STATUS_T ;
typedef size_t VCHIQ_REASON_T ;
struct TYPE_3__ {int id; } ;


 scalar_t__ VCHIQ_ERROR ;
 scalar_t__ VCHIQ_SUCCESS ;
 int * reason_names ;
 scalar_t__ stub1 (size_t,struct vchiq_header*,int ,void*) ;
 int vchiq_core_log_level ;
 int vchiq_log_trace (int ,char*,int ,int ,int ,struct vchiq_header*,void*) ;
 int vchiq_log_warning (int ,char*,int ,int ) ;

__attribute__((used)) static inline VCHIQ_STATUS_T
make_service_callback(struct vchiq_service *service, VCHIQ_REASON_T reason,
        struct vchiq_header *header, void *bulk_userdata)
{
 VCHIQ_STATUS_T status;

 vchiq_log_trace(vchiq_core_log_level, "%d: callback:%d (%s, %pK, %pK)",
  service->state->id, service->localport, reason_names[reason],
  header, bulk_userdata);
 status = service->base.callback(reason, header, service->handle,
  bulk_userdata);
 if (status == VCHIQ_ERROR) {
  vchiq_log_warning(vchiq_core_log_level,
   "%d: ignoring ERROR from callback to service %x",
   service->state->id, service->handle);
  status = VCHIQ_SUCCESS;
 }
 return status;
}
