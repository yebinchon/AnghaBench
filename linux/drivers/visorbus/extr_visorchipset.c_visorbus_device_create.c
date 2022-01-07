
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u32 ;
struct visorchannel {int dummy; } ;
struct TYPE_10__ {struct TYPE_10__* parent; } ;
struct TYPE_9__ {scalar_t__ created; } ;
struct visor_device {struct controlvm_message_header* pending_msg_hdr; int channel_type_guid; struct visorchannel* visorchannel; TYPE_2__ device; int inst; void* chipset_dev_no; void* chipset_bus_no; TYPE_1__ state; } ;
struct TYPE_12__ {int data_type_guid; int channel_addr; int dev_inst_guid; void* dev_no; void* bus_no; } ;
struct controlvm_message_packet {TYPE_4__ create_device; } ;
struct controlvm_message_header {int dummy; } ;
struct TYPE_13__ {int response_expected; } ;
struct TYPE_14__ {int id; TYPE_5__ flags; } ;
struct controlvm_message {TYPE_6__ hdr; struct controlvm_message_packet cmd; } ;
struct TYPE_15__ {TYPE_3__* acpi_device; } ;
struct TYPE_11__ {int dev; } ;


 void* BUS_ROOT_DEVICE ;
 int CRASH_DEV ;
 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_8__* chipset_dev ;
 int controlvm_responder (int ,TYPE_6__*,int) ;
 int create_visor_device (struct visor_device*) ;
 int dev_err (int *,char*,void*,...) ;
 int guid_copy (int *,int *) ;
 scalar_t__ guid_equal (int *,int *) ;
 int kfree (struct visor_device*) ;
 void* kzalloc (int,int ) ;
 int memcpy (struct controlvm_message_header*,TYPE_6__*,int) ;
 int save_crash_message (struct controlvm_message*,int ) ;
 int visor_vhba_channel_guid ;
 struct visor_device* visorbus_get_device_by_id (void*,void*,int *) ;
 struct visorchannel* visorchannel_create (int ,int ,int *,int) ;
 int visorchannel_destroy (struct visorchannel*) ;

__attribute__((used)) static int visorbus_device_create(struct controlvm_message *inmsg)
{
 struct controlvm_message_packet *cmd = &inmsg->cmd;
 struct controlvm_message_header *pmsg_hdr;
 u32 bus_no = cmd->create_device.bus_no;
 u32 dev_no = cmd->create_device.dev_no;
 struct visor_device *dev_info;
 struct visor_device *bus_info;
 struct visorchannel *visorchannel;
 int err;

 bus_info = visorbus_get_device_by_id(bus_no, BUS_ROOT_DEVICE, ((void*)0));
 if (!bus_info) {
  dev_err(&chipset_dev->acpi_device->dev,
   "failed to get bus by id: %d\n", bus_no);
  err = -ENODEV;
  goto err_respond;
 }
 if (bus_info->state.created == 0) {
  dev_err(&chipset_dev->acpi_device->dev,
   "bus not created, id: %d\n", bus_no);
  err = -EINVAL;
  goto err_respond;
 }
 dev_info = visorbus_get_device_by_id(bus_no, dev_no, ((void*)0));
 if (dev_info && dev_info->state.created == 1) {
  dev_err(&chipset_dev->acpi_device->dev,
   "failed to get bus by id: %d/%d\n", bus_no, dev_no);
  err = -EEXIST;
  goto err_respond;
 }

 dev_info = kzalloc(sizeof(*dev_info), GFP_KERNEL);
 if (!dev_info) {
  err = -ENOMEM;
  goto err_respond;
 }
 dev_info->chipset_bus_no = bus_no;
 dev_info->chipset_dev_no = dev_no;
 guid_copy(&dev_info->inst, &cmd->create_device.dev_inst_guid);
 dev_info->device.parent = &bus_info->device;
 visorchannel = visorchannel_create(cmd->create_device.channel_addr,
        GFP_KERNEL,
        &cmd->create_device.data_type_guid,
        1);
 if (!visorchannel) {
  dev_err(&chipset_dev->acpi_device->dev,
   "failed to create visorchannel: %d/%d\n",
   bus_no, dev_no);
  err = -ENOMEM;
  goto err_free_dev_info;
 }
 dev_info->visorchannel = visorchannel;
 guid_copy(&dev_info->channel_type_guid,
    &cmd->create_device.data_type_guid);
 if (guid_equal(&cmd->create_device.data_type_guid,
         &visor_vhba_channel_guid)) {
  err = save_crash_message(inmsg, CRASH_DEV);
  if (err)
   goto err_destroy_visorchannel;
 }
 if (inmsg->hdr.flags.response_expected == 1) {
  pmsg_hdr = kzalloc(sizeof(*pmsg_hdr), GFP_KERNEL);
  if (!pmsg_hdr) {
   err = -ENOMEM;
   goto err_destroy_visorchannel;
  }
  memcpy(pmsg_hdr, &inmsg->hdr,
         sizeof(struct controlvm_message_header));
  dev_info->pending_msg_hdr = pmsg_hdr;
 }

 err = create_visor_device(dev_info);
 if (err)
  goto err_destroy_visorchannel;

 return 0;

err_destroy_visorchannel:
 visorchannel_destroy(visorchannel);

err_free_dev_info:
 kfree(dev_info);

err_respond:
 if (inmsg->hdr.flags.response_expected == 1)
  controlvm_responder(inmsg->hdr.id, &inmsg->hdr, err);
 return err;
}
