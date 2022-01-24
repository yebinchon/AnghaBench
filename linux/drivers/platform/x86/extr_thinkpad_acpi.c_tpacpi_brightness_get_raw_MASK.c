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
typedef  int u8 ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
#define  TPACPI_BRGHT_MODE_EC 130 
#define  TPACPI_BRGHT_MODE_ECNVRAM 129 
#define  TPACPI_BRGHT_MODE_UCMS_STEP 128 
 int /*<<< orphan*/  TP_EC_BACKLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int brightness_mode ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int *status)
{
	u8 lec = 0;

	switch (brightness_mode) {
	case TPACPI_BRGHT_MODE_UCMS_STEP:
		*status = FUNC1();
		return 0;
	case TPACPI_BRGHT_MODE_EC:
	case TPACPI_BRGHT_MODE_ECNVRAM:
		if (FUNC2(!FUNC0(TP_EC_BACKLIGHT, &lec)))
			return -EIO;
		*status = lec;
		return 0;
	default:
		return -ENXIO;
	}
}