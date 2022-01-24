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
typedef  unsigned long u8 ;
struct rfkill {int dummy; } ;
typedef  enum rfkill_type { ____Placeholder_rfkill_type } rfkill_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rfkill* FUNC0 (int) ; 
 int /*<<< orphan*/  OT_EC_DEVICE_STATE_ADDRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 TYPE_1__* oaktrail_device ; 
 int /*<<< orphan*/  oaktrail_rfkill_ops ; 
 struct rfkill* FUNC2 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfkill*,int) ; 
 int FUNC5 (struct rfkill*) ; 

__attribute__((used)) static struct rfkill *FUNC6(char *name, enum rfkill_type type,
					  unsigned long mask)
{
	struct rfkill *rfkill_dev;
	u8 value;
	int err;

	rfkill_dev = FUNC2(name, &oaktrail_device->dev, type,
				  &oaktrail_rfkill_ops, (void *)mask);
	if (!rfkill_dev)
		return FUNC0(-ENOMEM);

	FUNC1(OT_EC_DEVICE_STATE_ADDRESS, &value);
	FUNC4(rfkill_dev, (value & mask) != 1);

	err = FUNC5(rfkill_dev);
	if (err) {
		FUNC3(rfkill_dev);
		return FUNC0(err);
	}

	return rfkill_dev;
}