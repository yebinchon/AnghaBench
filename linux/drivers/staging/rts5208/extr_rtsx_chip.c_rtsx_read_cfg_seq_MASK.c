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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int STATUS_FAIL ; 
 int STATUS_NOMEM ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int FUNC3 (struct rtsx_chip*,scalar_t__,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct rtsx_chip *chip, u8 func, u16 addr, u8 *buf,
		      int len)
{
	u32 *data;
	u16 offset = addr % 4;
	u16 aligned_addr = addr - offset;
	int dw_len, i, j;
	int retval;

	if ((len + offset) % 4)
		dw_len = (len + offset) / 4 + 1;
	else
		dw_len = (len + offset) / 4;

	FUNC1(FUNC2(chip), "dw_len = %d\n", dw_len);

	data = FUNC5(FUNC0(dw_len, 4));
	if (!data)
		return STATUS_NOMEM;

	for (i = 0; i < dw_len; i++) {
		retval = FUNC3(chip, func, aligned_addr + i * 4,
					  data + i);
		if (retval != STATUS_SUCCESS) {
			FUNC4(data);
			return STATUS_FAIL;
		}
	}

	if (buf) {
		j = 0;

		for (i = 0; i < len; i++) {
			buf[i] = (u8)(data[j] >> (offset * 8));
			if (++offset == 4) {
				j++;
				offset = 0;
			}
		}
	}

	FUNC4(data);

	return STATUS_SUCCESS;
}