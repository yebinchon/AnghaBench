#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gb_interface {int quirks; void* product_id; void* vendor_id; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bootrom_get_vid_pid_response {int /*<<< orphan*/  product_id; int /*<<< orphan*/  vendor_id; } ;
struct gb_bootrom {struct gb_connection* connection; } ;
typedef  int /*<<< orphan*/  response ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct gb_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_BOOTROM_TYPE_GET_VID_PID ; 
 int GB_INTERFACE_QUIRK_NO_GMP_IDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct gb_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gb_bootrom_get_vid_pid_response*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gb_bootrom *bootrom)
{
	struct gb_bootrom_get_vid_pid_response response;
	struct gb_connection *connection = bootrom->connection;
	struct gb_interface *intf = connection->bundle->intf;
	int ret;

	if (!(intf->quirks & GB_INTERFACE_QUIRK_NO_GMP_IDS))
		return;

	ret = FUNC2(connection, GB_BOOTROM_TYPE_GET_VID_PID,
				NULL, 0, &response, sizeof(response));
	if (ret) {
		FUNC1(&connection->bundle->dev,
			"Bootrom get vid/pid operation failed (%d)\n", ret);
		return;
	}

	/*
	 * NOTE: This is hacked, so that the same values of VID/PID can be used
	 * by next firmware level as well. The uevent for bootrom will still
	 * have VID/PID as 0, though after this point the sysfs files will start
	 * showing the updated values. But yeah, that's a bit racy as the same
	 * sysfs files would be showing 0 before this point.
	 */
	intf->vendor_id = FUNC3(response.vendor_id);
	intf->product_id = FUNC3(response.product_id);

	FUNC0(&connection->bundle->dev, "Bootrom got vid (0x%x)/pid (0x%x)\n",
		intf->vendor_id, intf->product_id);
}