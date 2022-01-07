
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct visor_segment_state {scalar_t__ alive; scalar_t__ operating; } ;
struct TYPE_11__ {scalar_t__ created; } ;
struct visor_device {struct controlvm_message_header* pending_msg_hdr; TYPE_2__ state; } ;
struct TYPE_10__ {struct visor_segment_state state; int dev_no; int bus_no; } ;
struct controlvm_message_packet {TYPE_1__ device_change_state; } ;
struct controlvm_message_header {int dummy; } ;
struct TYPE_13__ {int response_expected; } ;
struct TYPE_16__ {int id; TYPE_4__ flags; } ;
struct controlvm_message {TYPE_7__ hdr; struct controlvm_message_packet cmd; } ;
struct TYPE_17__ {TYPE_3__* acpi_device; } ;
struct TYPE_15__ {scalar_t__ alive; scalar_t__ operating; } ;
struct TYPE_14__ {scalar_t__ alive; scalar_t__ operating; } ;
struct TYPE_12__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_9__* chipset_dev ;
 int controlvm_responder (int ,TYPE_7__*,int) ;
 int dev_err (int *,char*,int) ;
 struct controlvm_message_header* kzalloc (int,int ) ;
 int memcpy (struct controlvm_message_header*,TYPE_7__*,int) ;
 TYPE_6__ segment_state_running ;
 TYPE_5__ segment_state_standby ;
 struct visor_device* visorbus_get_device_by_id (int ,int ,int *) ;
 int visorchipset_device_pause (struct visor_device*) ;
 int visorchipset_device_resume (struct visor_device*) ;

__attribute__((used)) static int visorbus_device_changestate(struct controlvm_message *inmsg)
{
 struct controlvm_message_packet *cmd = &inmsg->cmd;
 struct controlvm_message_header *pmsg_hdr;
 u32 bus_no = cmd->device_change_state.bus_no;
 u32 dev_no = cmd->device_change_state.dev_no;
 struct visor_segment_state state = cmd->device_change_state.state;
 struct visor_device *dev_info;
 int err = 0;

 dev_info = visorbus_get_device_by_id(bus_no, dev_no, ((void*)0));
 if (!dev_info) {
  err = -ENODEV;
  goto err_respond;
 }
 if (dev_info->state.created == 0) {
  err = -EINVAL;
  goto err_respond;
 }
 if (dev_info->pending_msg_hdr) {

  err = -EIO;
  goto err_respond;
 }

 if (inmsg->hdr.flags.response_expected == 1) {
  pmsg_hdr = kzalloc(sizeof(*pmsg_hdr), GFP_KERNEL);
  if (!pmsg_hdr) {
   err = -ENOMEM;
   goto err_respond;
  }
  memcpy(pmsg_hdr, &inmsg->hdr,
         sizeof(struct controlvm_message_header));
  dev_info->pending_msg_hdr = pmsg_hdr;
 }
 if (state.alive == segment_state_running.alive &&
     state.operating == segment_state_running.operating)

  err = visorchipset_device_resume(dev_info);

 else if (state.alive == segment_state_standby.alive &&
   state.operating == segment_state_standby.operating)




  err = visorchipset_device_pause(dev_info);
 if (err)
  goto err_respond;
 return 0;

err_respond:
 dev_err(&chipset_dev->acpi_device->dev, "failed: %d\n", err);
 if (inmsg->hdr.flags.response_expected == 1)
  controlvm_responder(inmsg->hdr.id, &inmsg->hdr, err);
 return err;
}
