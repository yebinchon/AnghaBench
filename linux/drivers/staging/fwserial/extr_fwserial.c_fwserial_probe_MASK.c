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
struct ieee1394_device_id {int dummy; } ;
struct fw_unit {int dummy; } ;
struct fw_serial {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct fw_unit*) ; 
 int FUNC1 (struct fw_serial*,struct fw_unit*) ; 
 int FUNC2 (struct fw_unit*) ; 
 int /*<<< orphan*/  fwserial_list_mutex ; 
 struct fw_serial* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct fw_unit *unit,
			  const struct ieee1394_device_id *id)
{
	struct fw_serial *serial;
	int err;

	FUNC4(&fwserial_list_mutex);
	serial = FUNC3(FUNC0(unit)->card);
	if (!serial)
		err = FUNC2(unit);
	else
		err = FUNC1(serial, unit);
	FUNC5(&fwserial_list_mutex);
	return err;
}