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
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int SD_DATA_IDLE ; 
 int /*<<< orphan*/  SD_DATA_STATE ; 
 int STATUS_SUCCESS ; 
 int STATUS_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int FUNC2 (struct rtsx_chip*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rtsx_chip *chip)
{
	int retval = STATUS_TIMEDOUT;
	int i;
	u8 val = 0;

	for (i = 0; i < 100; i++) {
		retval = FUNC2(chip, SD_DATA_STATE, &val);
		if (retval)
			return retval;
		if (val & SD_DATA_IDLE) {
			retval = STATUS_SUCCESS;
			break;
		}
		FUNC3(100);
	}
	FUNC0(FUNC1(chip), "SD_DATA_STATE: 0x%02x\n", val);

	return retval;
}