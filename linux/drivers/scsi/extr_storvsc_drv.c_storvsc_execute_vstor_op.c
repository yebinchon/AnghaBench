
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstor_packet {scalar_t__ operation; scalar_t__ status; int flags; } ;
struct storvsc_cmd_request {int wait_event; struct vstor_packet vstor_packet; } ;
struct hv_device {int channel; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int REQUEST_COMPLETION_FLAG ;
 int VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED ;
 int VM_PKT_DATA_INBAND ;
 scalar_t__ VSTOR_OPERATION_COMPLETE_IO ;
 int init_completion (int *) ;
 int vmbus_sendpacket (int ,struct vstor_packet*,scalar_t__,unsigned long,int ,int ) ;
 scalar_t__ vmscsi_size_delta ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int storvsc_execute_vstor_op(struct hv_device *device,
        struct storvsc_cmd_request *request,
        bool status_check)
{
 struct vstor_packet *vstor_packet;
 int ret, t;

 vstor_packet = &request->vstor_packet;

 init_completion(&request->wait_event);
 vstor_packet->flags = REQUEST_COMPLETION_FLAG;

 ret = vmbus_sendpacket(device->channel, vstor_packet,
          (sizeof(struct vstor_packet) -
          vmscsi_size_delta),
          (unsigned long)request,
          VM_PKT_DATA_INBAND,
          VMBUS_DATA_PACKET_FLAG_COMPLETION_REQUESTED);
 if (ret != 0)
  return ret;

 t = wait_for_completion_timeout(&request->wait_event, 5*HZ);
 if (t == 0)
  return -ETIMEDOUT;

 if (!status_check)
  return ret;

 if (vstor_packet->operation != VSTOR_OPERATION_COMPLETE_IO ||
     vstor_packet->status != 0)
  return -EINVAL;

 return ret;
}
