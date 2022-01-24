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
typedef  enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;

/* Variables and functions */
 int EINVAL ; 
#define  THROTTLE_OC1 131 
#define  THROTTLE_OC2 130 
#define  THROTTLE_OC3 129 
#define  THROTTLE_OC4 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * throt_names ; 

__attribute__((used)) static int FUNC2(enum soctherm_throttle_id alarm)
{
	int rv = -EINVAL;

	switch (alarm) {
	case THROTTLE_OC1:
		FUNC0("soctherm: Successfully handled OC1 alarm\n");
		rv = 0;
		break;

	case THROTTLE_OC2:
		FUNC0("soctherm: Successfully handled OC2 alarm\n");
		rv = 0;
		break;

	case THROTTLE_OC3:
		FUNC0("soctherm: Successfully handled OC3 alarm\n");
		rv = 0;
		break;

	case THROTTLE_OC4:
		FUNC0("soctherm: Successfully handled OC4 alarm\n");
		rv = 0;
		break;

	default:
		break;
	}

	if (rv)
		FUNC1("soctherm: ERROR in handling %s alarm\n",
		       throt_names[alarm]);

	return rv;
}