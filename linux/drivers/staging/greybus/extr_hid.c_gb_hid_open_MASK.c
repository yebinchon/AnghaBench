#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hid_device {struct gb_hid* driver_data; } ;
struct gb_hid {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_HID_STARTED ; 
 int /*<<< orphan*/  GB_HID_TYPE_PWR_ON ; 
 int FUNC0 (struct gb_hid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hid)
{
	struct gb_hid *ghid = hid->driver_data;
	int ret;

	ret = FUNC0(ghid, GB_HID_TYPE_PWR_ON);
	if (ret < 0)
		return ret;

	FUNC1(GB_HID_STARTED, &ghid->flags);
	return 0;
}