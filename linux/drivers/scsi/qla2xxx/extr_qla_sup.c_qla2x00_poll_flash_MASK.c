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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {int dummy; } ;

/* Variables and functions */
 int BIT_5 ; 
 int BIT_7 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct qla_hw_data *ha, uint32_t addr, uint8_t poll_data,
    uint8_t man_id, uint8_t flash_id)
{
	int status;
	uint8_t flash_data;
	uint32_t cnt;

	status = 1;

	/* Wait for 30 seconds for command to finish. */
	poll_data &= BIT_7;
	for (cnt = 3000000; cnt; cnt--) {
		flash_data = FUNC2(ha, addr);
		if ((flash_data & BIT_7) == poll_data) {
			status = 0;
			break;
		}

		if (man_id != 0x40 && man_id != 0xda) {
			if ((flash_data & BIT_5) && cnt > 2)
				cnt = 2;
		}
		FUNC3(10);
		FUNC0();
		FUNC1();
	}
	return status;
}