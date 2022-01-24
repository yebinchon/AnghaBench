#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {TYPE_2__* connection; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* bundle; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_HID_STARTED ; 
 int /*<<< orphan*/  GB_HID_TYPE_PWR_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct gb_hid*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hid_device *hid)
{
	struct gb_hid *ghid = hid->driver_data;
	int ret;

	FUNC0(GB_HID_STARTED, &ghid->flags);

	/* Save some power */
	ret = FUNC2(ghid, GB_HID_TYPE_PWR_OFF);
	if (ret)
		FUNC1(&ghid->connection->bundle->dev,
			"failed to power off (%d)\n", ret);
}