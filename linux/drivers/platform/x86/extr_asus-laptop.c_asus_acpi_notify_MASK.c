#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct asus_laptop {TYPE_5__* pega_accel_poll; int /*<<< orphan*/ * backlight_device; TYPE_2__* device; int /*<<< orphan*/ * event_count; } ;
struct acpi_device {int dummy; } ;
struct TYPE_10__ {TYPE_4__* input; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  device_class; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; TYPE_1__ pnp; } ;

/* Variables and functions */
 int ATKD_BRNDOWN ; 
 int ATKD_BRNDOWN_MAX ; 
 int ATKD_BRNDOWN_MIN ; 
 int ATKD_BRNUP ; 
 int ATKD_BRNUP_MAX ; 
 int ATKD_BRNUP_MIN ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct asus_laptop* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_laptop*) ; 
 int /*<<< orphan*/  FUNC3 (struct asus_laptop*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct acpi_device *device, u32 event)
{
	struct asus_laptop *asus = FUNC1(device);
	u16 count;

	/* TODO Find a better way to handle events count. */
	count = asus->event_count[event % 128]++;
	FUNC0(asus->device->pnp.device_class,
					FUNC4(&asus->device->dev), event,
					count);

	if (event >= ATKD_BRNUP_MIN && event <= ATKD_BRNUP_MAX)
		event = ATKD_BRNUP;
	else if (event >= ATKD_BRNDOWN_MIN &&
		 event <= ATKD_BRNDOWN_MAX)
		event = ATKD_BRNDOWN;

	/* Brightness events are special */
	if (event == ATKD_BRNDOWN || event == ATKD_BRNUP) {
		if (asus->backlight_device != NULL) {
			/* Update the backlight device. */
			FUNC2(asus);
			return ;
		}
	}

	/* Accelerometer "coarse orientation change" event */
	if (asus->pega_accel_poll && event == 0xEA) {
		FUNC5(&asus->pega_accel_poll->input->dev.kobj,
			       KOBJ_CHANGE);
		return ;
	}

	FUNC3(asus, event);
}