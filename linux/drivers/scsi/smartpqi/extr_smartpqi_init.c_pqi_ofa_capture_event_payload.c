
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {int reason; } ;
struct TYPE_4__ {int bytes_requested; } ;
struct TYPE_6__ {TYPE_2__ ofa_cancelled; TYPE_1__ ofa_memory_allocation; } ;
struct pqi_event_response {TYPE_3__ data; } ;
struct pqi_event {scalar_t__ event_type; int ofa_cancel_reason; int ofa_bytes_requested; int event_id; } ;


 scalar_t__ PQI_EVENT_OFA_CANCELLED ;
 scalar_t__ PQI_EVENT_OFA_MEMORY_ALLOCATION ;
 scalar_t__ PQI_EVENT_TYPE_OFA ;
 scalar_t__ get_unaligned_le16 (int *) ;

__attribute__((used)) static void pqi_ofa_capture_event_payload(struct pqi_event *event,
 struct pqi_event_response *response)
{
 u16 event_id;

 event_id = get_unaligned_le16(&event->event_id);

 if (event->event_type == PQI_EVENT_TYPE_OFA) {
  if (event_id == PQI_EVENT_OFA_MEMORY_ALLOCATION) {
   event->ofa_bytes_requested =
   response->data.ofa_memory_allocation.bytes_requested;
  } else if (event_id == PQI_EVENT_OFA_CANCELLED) {
   event->ofa_cancel_reason =
   response->data.ofa_cancelled.reason;
  }
 }
}
