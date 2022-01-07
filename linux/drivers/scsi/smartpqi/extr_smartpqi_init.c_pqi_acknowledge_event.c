
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iu_length; int iu_type; } ;
struct pqi_event_acknowledge_request {int additional_event_id; int event_id; int event_type; TYPE_1__ header; } ;
struct pqi_event {int additional_event_id; int event_id; int event_type; } ;
struct pqi_ctrl_info {int dummy; } ;
typedef int request ;


 scalar_t__ PQI_REQUEST_HEADER_LENGTH ;
 int PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT ;
 int memset (struct pqi_event_acknowledge_request*,int ,int) ;
 int pqi_send_event_ack (struct pqi_ctrl_info*,struct pqi_event_acknowledge_request*,int) ;
 int put_unaligned_le16 (scalar_t__,int *) ;

__attribute__((used)) static void pqi_acknowledge_event(struct pqi_ctrl_info *ctrl_info,
 struct pqi_event *event)
{
 struct pqi_event_acknowledge_request request;

 memset(&request, 0, sizeof(request));

 request.header.iu_type = PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT;
 put_unaligned_le16(sizeof(request) - PQI_REQUEST_HEADER_LENGTH,
  &request.header.iu_length);
 request.event_type = event->event_type;
 request.event_id = event->event_id;
 request.additional_event_id = event->additional_event_id;

 pqi_send_event_ack(ctrl_info, &request, sizeof(request));
}
