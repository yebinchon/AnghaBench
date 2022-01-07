
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {scalar_t__ created; } ;
struct visor_device {int name; struct controlvm_message_header* pending_msg_hdr; TYPE_2__ state; } ;
struct TYPE_6__ {int dev_no; int bus_no; } ;
struct controlvm_message_packet {TYPE_1__ destroy_device; } ;
struct controlvm_message_header {int dummy; } ;
struct TYPE_8__ {int response_expected; } ;
struct TYPE_9__ {int id; TYPE_3__ flags; } ;
struct controlvm_message {TYPE_4__ hdr; struct controlvm_message_packet cmd; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int controlvm_responder (int ,TYPE_4__*,int) ;
 int kfree (int ) ;
 struct controlvm_message_header* kzalloc (int,int ) ;
 int memcpy (struct controlvm_message_header*,TYPE_4__*,int) ;
 int remove_visor_device (struct visor_device*) ;
 struct visor_device* visorbus_get_device_by_id (int ,int ,int *) ;

__attribute__((used)) static int visorbus_device_destroy(struct controlvm_message *inmsg)
{
 struct controlvm_message_packet *cmd = &inmsg->cmd;
 struct controlvm_message_header *pmsg_hdr;
 u32 bus_no = cmd->destroy_device.bus_no;
 u32 dev_no = cmd->destroy_device.dev_no;
 struct visor_device *dev_info;
 int err;

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
 kfree(dev_info->name);
 remove_visor_device(dev_info);
 return 0;

err_respond:
 if (inmsg->hdr.flags.response_expected == 1)
  controlvm_responder(inmsg->hdr.id, &inmsg->hdr, err);
 return err;
}
