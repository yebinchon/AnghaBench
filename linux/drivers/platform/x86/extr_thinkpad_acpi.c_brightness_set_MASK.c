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

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
#define  TPACPI_BRGHT_MODE_EC 130 
#define  TPACPI_BRGHT_MODE_ECNVRAM 129 
#define  TPACPI_BRGHT_MODE_UCMS_STEP 128 
 int /*<<< orphan*/  TPACPI_DBG_BRGHT ; 
 unsigned int bright_maxlvl ; 
 int brightness_mode ; 
 int /*<<< orphan*/  brightness_mutex ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int value)
{
	int res;

	if (value > bright_maxlvl)
		return -EINVAL;

	FUNC4(TPACPI_DBG_BRGHT,
			"set backlight level to %d\n", value);

	res = FUNC0(&brightness_mutex);
	if (res < 0)
		return res;

	switch (brightness_mode) {
	case TPACPI_BRGHT_MODE_EC:
	case TPACPI_BRGHT_MODE_ECNVRAM:
		res = FUNC2(value);
		break;
	case TPACPI_BRGHT_MODE_UCMS_STEP:
		res = FUNC3(value);
		break;
	default:
		res = -ENXIO;
	}

	FUNC1(&brightness_mutex);
	return res;
}