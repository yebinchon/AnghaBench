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
struct enclosure_device {int dummy; } ;
struct enclosure_component {int power_status; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,struct enclosure_component*,unsigned char*) ; 
 unsigned char* FUNC1 (struct enclosure_device*,struct enclosure_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct enclosure_device*) ; 
 int FUNC3 (struct enclosure_device*,struct enclosure_component*,unsigned char*) ; 

__attribute__((used)) static int FUNC4(struct enclosure_device *edev,
				struct enclosure_component *ecomp,
				int val)
{
	unsigned char desc[4];
	unsigned char *desc_ptr;

	if (!FUNC2(edev))
		return -EINVAL;

	desc_ptr = FUNC1(edev, ecomp);

	if (!desc_ptr)
		return -EIO;

	FUNC0(desc, ecomp, desc_ptr);

	switch (val) {
	/* power = 1 is device_off = 0 and vice versa */
	case 0:
		desc[3] |= 0x10;
		break;
	case 1:
		desc[3] &= 0xef;
		break;
	default:
		return -EINVAL;
	}
	ecomp->power_status = val;
	return FUNC3(edev, ecomp, desc);
}