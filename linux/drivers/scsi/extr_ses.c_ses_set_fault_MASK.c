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
struct enclosure_component {int dummy; } ;
typedef  enum enclosure_component_setting { ____Placeholder_enclosure_component_setting } enclosure_component_setting ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  ENCLOSURE_SETTING_DISABLED 129 
#define  ENCLOSURE_SETTING_ENABLED 128 
 int /*<<< orphan*/  FUNC0 (unsigned char*,struct enclosure_component*,unsigned char*) ; 
 unsigned char* FUNC1 (struct enclosure_device*,struct enclosure_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct enclosure_device*) ; 
 int FUNC3 (struct enclosure_device*,struct enclosure_component*,unsigned char*) ; 

__attribute__((used)) static int FUNC4(struct enclosure_device *edev,
			  struct enclosure_component *ecomp,
			 enum enclosure_component_setting val)
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
	case ENCLOSURE_SETTING_DISABLED:
		desc[3] &= 0xdf;
		break;
	case ENCLOSURE_SETTING_ENABLED:
		desc[3] |= 0x20;
		break;
	default:
		/* SES doesn't do the SGPIO blink settings */
		return -EINVAL;
	}

	return FUNC3(edev, ecomp, desc);
}