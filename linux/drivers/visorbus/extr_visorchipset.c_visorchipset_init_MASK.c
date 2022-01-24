#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct visorchannel {int dummy; } ;
struct visor_controlvm_channel {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct acpi_device {TYPE_1__ dev; TYPE_2__* driver_data; } ;
struct TYPE_8__ {struct visorchannel* controlvm_channel; struct acpi_device* acpi_device; int /*<<< orphan*/  periodic_controlvm_work; void* poll_jiffies; int /*<<< orphan*/  most_recent_message_jiffies; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* POLLJIFFIES_CONTROLVM_FAST ; 
 int /*<<< orphan*/  VISOR_CHANNEL_SIGNATURE ; 
 int /*<<< orphan*/  VISOR_CONTROLVM_CHANNEL_VERSIONID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* chipset_dev ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  controlvm_periodic_work ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  setup_crash_devices_work_queue ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  visor_controlvm_channel_guid ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct visorchannel*) ; 
 int /*<<< orphan*/  FUNC13 (struct visorchannel*) ; 
 int /*<<< orphan*/  visorchipset_dev_groups ; 

__attribute__((used)) static int FUNC14(struct acpi_device *acpi_device)
{
	int err = -ENODEV;
	struct visorchannel *controlvm_channel;

	chipset_dev = FUNC6(sizeof(*chipset_dev), GFP_KERNEL);
	if (!chipset_dev)
		goto error;
	err = FUNC2(chipset_dev);
	if (err)
		goto error_free_chipset_dev;
	acpi_device->driver_data = chipset_dev;
	chipset_dev->acpi_device = acpi_device;
	chipset_dev->poll_jiffies = POLLJIFFIES_CONTROLVM_FAST;
	err = FUNC8(&chipset_dev->acpi_device->dev.kobj,
				  visorchipset_dev_groups);
	if (err < 0)
		goto error_destroy_channel;
	controlvm_channel = chipset_dev->controlvm_channel;
	if (!FUNC10(FUNC13(controlvm_channel),
				 &chipset_dev->acpi_device->dev,
				 &visor_controlvm_channel_guid,
				 "controlvm",
				 sizeof(struct visor_controlvm_channel),
				 VISOR_CONTROLVM_CHANNEL_VERSIONID,
				 VISOR_CHANNEL_SIGNATURE))
		goto error_delete_groups;
	/* if booting in a crash kernel */
	if (FUNC4())
		FUNC0(&chipset_dev->periodic_controlvm_work,
				  setup_crash_devices_work_queue);
	else
		FUNC0(&chipset_dev->periodic_controlvm_work,
				  controlvm_periodic_work);
	chipset_dev->most_recent_message_jiffies = jiffies;
	chipset_dev->poll_jiffies = POLLJIFFIES_CONTROLVM_FAST;
	FUNC7(&chipset_dev->periodic_controlvm_work,
			      chipset_dev->poll_jiffies);
	err = FUNC11();
	if (err < 0)
		goto error_cancel_work;
	return 0;

error_cancel_work:
	FUNC1(&chipset_dev->periodic_controlvm_work);

error_delete_groups:
	FUNC9(&chipset_dev->acpi_device->dev.kobj,
			    visorchipset_dev_groups);

error_destroy_channel:
	FUNC12(chipset_dev->controlvm_channel);

error_free_chipset_dev:
	FUNC5(chipset_dev);

error:
	FUNC3(&acpi_device->dev, "failed with error %d\n", err);
	return err;
}