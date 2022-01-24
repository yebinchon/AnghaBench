#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct visorchannel {int dummy; } ;
struct TYPE_10__ {struct TYPE_10__* parent; } ;
struct TYPE_9__ {scalar_t__ created; } ;
struct visor_device {struct controlvm_message_header* pending_msg_hdr; int /*<<< orphan*/  channel_type_guid; struct visorchannel* visorchannel; TYPE_2__ device; int /*<<< orphan*/  inst; void* chipset_dev_no; void* chipset_bus_no; TYPE_1__ state; } ;
struct TYPE_12__ {int /*<<< orphan*/  data_type_guid; int /*<<< orphan*/  channel_addr; int /*<<< orphan*/  dev_inst_guid; void* dev_no; void* bus_no; } ;
struct controlvm_message_packet {TYPE_4__ create_device; } ;
struct controlvm_message_header {int dummy; } ;
struct TYPE_13__ {int response_expected; } ;
struct TYPE_14__ {int /*<<< orphan*/  id; TYPE_5__ flags; } ;
struct controlvm_message {TYPE_6__ hdr; struct controlvm_message_packet cmd; } ;
struct TYPE_15__ {TYPE_3__* acpi_device; } ;
struct TYPE_11__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* BUS_ROOT_DEVICE ; 
 int /*<<< orphan*/  CRASH_DEV ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_8__* chipset_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_6__*,int) ; 
 int FUNC1 (struct visor_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct visor_device*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct controlvm_message_header*,TYPE_6__*,int) ; 
 int FUNC8 (struct controlvm_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  visor_vhba_channel_guid ; 
 struct visor_device* FUNC9 (void*,void*,int /*<<< orphan*/ *) ; 
 struct visorchannel* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct visorchannel*) ; 

__attribute__((used)) static int FUNC12(struct controlvm_message *inmsg)
{
	struct controlvm_message_packet *cmd = &inmsg->cmd;
	struct controlvm_message_header *pmsg_hdr;
	u32 bus_no = cmd->create_device.bus_no;
	u32 dev_no = cmd->create_device.dev_no;
	struct visor_device *dev_info;
	struct visor_device *bus_info;
	struct visorchannel *visorchannel;
	int err;

	bus_info = FUNC9(bus_no, BUS_ROOT_DEVICE, NULL);
	if (!bus_info) {
		FUNC2(&chipset_dev->acpi_device->dev,
			"failed to get bus by id: %d\n", bus_no);
		err = -ENODEV;
		goto err_respond;
	}
	if (bus_info->state.created == 0) {
		FUNC2(&chipset_dev->acpi_device->dev,
			"bus not created, id: %d\n", bus_no);
		err = -EINVAL;
		goto err_respond;
	}
	dev_info = FUNC9(bus_no, dev_no, NULL);
	if (dev_info && dev_info->state.created == 1) {
		FUNC2(&chipset_dev->acpi_device->dev,
			"failed to get bus by id: %d/%d\n", bus_no, dev_no);
		err = -EEXIST;
		goto err_respond;
	}

	dev_info = FUNC6(sizeof(*dev_info), GFP_KERNEL);
	if (!dev_info) {
		err = -ENOMEM;
		goto err_respond;
	}
	dev_info->chipset_bus_no = bus_no;
	dev_info->chipset_dev_no = dev_no;
	FUNC3(&dev_info->inst, &cmd->create_device.dev_inst_guid);
	dev_info->device.parent = &bus_info->device;
	visorchannel = FUNC10(cmd->create_device.channel_addr,
					   GFP_KERNEL,
					   &cmd->create_device.data_type_guid,
					   true);
	if (!visorchannel) {
		FUNC2(&chipset_dev->acpi_device->dev,
			"failed to create visorchannel: %d/%d\n",
			bus_no, dev_no);
		err = -ENOMEM;
		goto err_free_dev_info;
	}
	dev_info->visorchannel = visorchannel;
	FUNC3(&dev_info->channel_type_guid,
		  &cmd->create_device.data_type_guid);
	if (FUNC4(&cmd->create_device.data_type_guid,
		       &visor_vhba_channel_guid)) {
		err = FUNC8(inmsg, CRASH_DEV);
		if (err)
			goto err_destroy_visorchannel;
	}
	if (inmsg->hdr.flags.response_expected == 1) {
		pmsg_hdr = FUNC6(sizeof(*pmsg_hdr), GFP_KERNEL);
		if (!pmsg_hdr) {
			err = -ENOMEM;
			goto err_destroy_visorchannel;
		}
		FUNC7(pmsg_hdr, &inmsg->hdr,
		       sizeof(struct controlvm_message_header));
		dev_info->pending_msg_hdr = pmsg_hdr;
	}
	/* create_visor_device will send response */
	err = FUNC1(dev_info);
	if (err)
		goto err_destroy_visorchannel;

	return 0;

err_destroy_visorchannel:
	FUNC11(visorchannel);

err_free_dev_info:
	FUNC5(dev_info);

err_respond:
	if (inmsg->hdr.flags.response_expected == 1)
		FUNC0(inmsg->hdr.id, &inmsg->hdr, err);
	return err;
}