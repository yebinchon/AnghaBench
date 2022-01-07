
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* cdb; int scsi_status; int srb_status; int data_transfer_length; int sense_info_length; int sense_data; } ;
struct vstor_packet {TYPE_2__ vm_srb; } ;
struct storvsc_device {int waiting_to_drain; scalar_t__ drain_notify; int num_outstanding_req; struct hv_device* device; } ;
struct storvsc_cmd_request {TYPE_1__* cmd; struct vstor_packet vstor_packet; } ;
struct hv_device {int dummy; } ;
struct TYPE_3__ {int sense_buffer; } ;


 scalar_t__ INQUIRY ;
 scalar_t__ MODE_SENSE ;
 int SRB_STATUS_AUTOSENSE_VALID ;
 int SRB_STATUS_SUCCESS ;
 int STORVSC_LOGGING_WARN ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int memcpy (int ,int ,int ) ;
 int storvsc_command_completion (struct storvsc_cmd_request*,struct storvsc_device*) ;
 int storvsc_log (struct hv_device*,int ,char*,struct storvsc_cmd_request*,int,...) ;
 int wake_up (int *) ;

__attribute__((used)) static void storvsc_on_io_completion(struct storvsc_device *stor_device,
      struct vstor_packet *vstor_packet,
      struct storvsc_cmd_request *request)
{
 struct vstor_packet *stor_pkt;
 struct hv_device *device = stor_device->device;

 stor_pkt = &request->vstor_packet;
 if ((stor_pkt->vm_srb.cdb[0] == INQUIRY) ||
    (stor_pkt->vm_srb.cdb[0] == MODE_SENSE)) {
  vstor_packet->vm_srb.scsi_status = 0;
  vstor_packet->vm_srb.srb_status = SRB_STATUS_SUCCESS;
 }



 stor_pkt->vm_srb.scsi_status = vstor_packet->vm_srb.scsi_status;
 stor_pkt->vm_srb.srb_status = vstor_packet->vm_srb.srb_status;
 stor_pkt->vm_srb.sense_info_length =
 vstor_packet->vm_srb.sense_info_length;

 if (vstor_packet->vm_srb.scsi_status != 0 ||
     vstor_packet->vm_srb.srb_status != SRB_STATUS_SUCCESS)
  storvsc_log(device, STORVSC_LOGGING_WARN,
   "cmd 0x%x scsi status 0x%x srb status 0x%x\n",
   stor_pkt->vm_srb.cdb[0],
   vstor_packet->vm_srb.scsi_status,
   vstor_packet->vm_srb.srb_status);

 if ((vstor_packet->vm_srb.scsi_status & 0xFF) == 0x02) {

  if (vstor_packet->vm_srb.srb_status &
   SRB_STATUS_AUTOSENSE_VALID) {


   storvsc_log(device, STORVSC_LOGGING_WARN,
    "stor pkt %p autosense data valid - len %d\n",
    request, vstor_packet->vm_srb.sense_info_length);

   memcpy(request->cmd->sense_buffer,
          vstor_packet->vm_srb.sense_data,
          vstor_packet->vm_srb.sense_info_length);

  }
 }

 stor_pkt->vm_srb.data_transfer_length =
 vstor_packet->vm_srb.data_transfer_length;

 storvsc_command_completion(request, stor_device);

 if (atomic_dec_and_test(&stor_device->num_outstanding_req) &&
  stor_device->drain_notify)
  wake_up(&stor_device->waiting_to_drain);


}
