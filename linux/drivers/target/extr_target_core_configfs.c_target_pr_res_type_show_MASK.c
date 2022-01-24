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
struct TYPE_3__ {int /*<<< orphan*/  emulate_pr; } ;
struct se_device {int dev_reservation_flags; TYPE_2__* transport; TYPE_1__ dev_attrib; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int transport_flags; } ;

/* Variables and functions */
 int DRF_SPC2_RESERVATIONS ; 
 int TRANSPORT_FLAG_PASSTHROUGH_PGR ; 
 struct se_device* FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item, char *page)
{
	struct se_device *dev = FUNC0(item);

	if (!dev->dev_attrib.emulate_pr)
		return FUNC1(page, "SPC_RESERVATIONS_DISABLED\n");
	if (dev->transport->transport_flags & TRANSPORT_FLAG_PASSTHROUGH_PGR)
		return FUNC1(page, "SPC_PASSTHROUGH\n");
	if (dev->dev_reservation_flags & DRF_SPC2_RESERVATIONS)
		return FUNC1(page, "SPC2_RESERVATIONS\n");

	return FUNC1(page, "SPC3_PERSISTENT_RESERVATIONS\n");
}