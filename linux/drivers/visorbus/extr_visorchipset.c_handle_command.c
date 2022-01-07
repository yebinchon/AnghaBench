
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct parser_context {int dummy; } ;
struct TYPE_10__ {int phys_device; } ;
struct TYPE_11__ {TYPE_1__ flags; } ;
struct controlvm_message_packet {TYPE_2__ device_change_state; } ;
struct TYPE_12__ {int response_expected; } ;
struct TYPE_13__ {int id; TYPE_3__ flags; scalar_t__ payload_bytes; scalar_t__ payload_vm_offset; } ;
struct controlvm_message {TYPE_4__ hdr; struct controlvm_message_packet cmd; } ;
struct TYPE_14__ {int controlvm_channel; } ;
 int CONTROLVM_QUEUE_ACK ;
 int CONTROLVM_RESP_ID_UNKNOWN ;
 int CONTROLVM_RESP_SUCCESS ;
 int EAGAIN ;
 int ENOMSG ;
 TYPE_9__* chipset_dev ;
 int chipset_init (struct controlvm_message*) ;
 int chipset_notready_uevent (TYPE_4__*) ;
 int chipset_ready_uevent (TYPE_4__*) ;
 int chipset_selftest_uevent (TYPE_4__*) ;
 int controlvm_init_response (struct controlvm_message*,TYPE_4__*,int ) ;
 int controlvm_respond (TYPE_4__*,int ,int *) ;
 int parahotplug_process_message (struct controlvm_message*) ;
 int parser_done (struct parser_context*) ;
 struct parser_context* parser_init_stream (scalar_t__,scalar_t__,int*) ;
 int visorbus_configure (struct controlvm_message*,struct parser_context*) ;
 int visorbus_create (struct controlvm_message*) ;
 int visorbus_destroy (struct controlvm_message*) ;
 int visorbus_device_changestate (struct controlvm_message*) ;
 int visorbus_device_create (struct controlvm_message*) ;
 int visorbus_device_destroy (struct controlvm_message*) ;
 int visorchannel_signalinsert (int ,int ,struct controlvm_message*) ;

__attribute__((used)) static int handle_command(struct controlvm_message inmsg, u64 channel_addr)
{
 struct controlvm_message_packet *cmd = &inmsg.cmd;
 u64 parm_addr;
 u32 parm_bytes;
 struct parser_context *parser_ctx = ((void*)0);
 struct controlvm_message ackmsg;
 int err = 0;


 parm_addr = channel_addr + inmsg.hdr.payload_vm_offset;
 parm_bytes = inmsg.hdr.payload_bytes;





 if (parm_bytes) {
  bool retry;

  parser_ctx = parser_init_stream(parm_addr, parm_bytes, &retry);
  if (!parser_ctx && retry)
   return -EAGAIN;
 }
 controlvm_init_response(&ackmsg, &inmsg.hdr, CONTROLVM_RESP_SUCCESS);
 err = visorchannel_signalinsert(chipset_dev->controlvm_channel,
     CONTROLVM_QUEUE_ACK, &ackmsg);
 if (err)
  return err;
 switch (inmsg.hdr.id) {
 case 135:
  err = chipset_init(&inmsg);
  break;
 case 137:
  err = visorbus_create(&inmsg);
  break;
 case 136:
  err = visorbus_destroy(&inmsg);
  break;
 case 138:
  err = visorbus_configure(&inmsg, parser_ctx);
  break;
 case 129:
  err = visorbus_device_create(&inmsg);
  break;
 case 131:
  if (cmd->device_change_state.flags.phys_device) {
   err = parahotplug_process_message(&inmsg);
  } else {




   err = visorbus_device_changestate(&inmsg);
   break;
  }
  break;
 case 128:
  err = visorbus_device_destroy(&inmsg);
  break;
 case 130:

  if (inmsg.hdr.flags.response_expected)
   controlvm_respond(&inmsg.hdr, CONTROLVM_RESP_SUCCESS,
       ((void*)0));
  break;
 case 134:
  err = chipset_ready_uevent(&inmsg.hdr);
  break;
 case 133:
  err = chipset_selftest_uevent(&inmsg.hdr);
  break;
 case 132:
  err = chipset_notready_uevent(&inmsg.hdr);
  break;
 default:
  err = -ENOMSG;
  if (inmsg.hdr.flags.response_expected)
   controlvm_respond(&inmsg.hdr,
       -CONTROLVM_RESP_ID_UNKNOWN, ((void*)0));
  break;
 }
 if (parser_ctx) {
  parser_done(parser_ctx);
  parser_ctx = ((void*)0);
 }
 return err;
}
