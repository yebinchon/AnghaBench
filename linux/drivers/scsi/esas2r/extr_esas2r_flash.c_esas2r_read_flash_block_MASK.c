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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct esas2r_adapter {int /*<<< orphan*/  flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_SERIAL_FLASH ; 
 int /*<<< orphan*/  DRBL_FLASH_DONE ; 
 int /*<<< orphan*/  DRBL_FLASH_REQ ; 
 int MW_DATA_ADDR_PAR_FLASH ; 
 int MW_DATA_ADDR_SER_FLASH ; 
 int WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC4(struct esas2r_adapter *a,
			     void *to,
			     u32 from,
			     u32 size)
{
	u8 *end = (u8 *)to;

	/* Try to acquire access to the flash */
	if (!FUNC0(a, DRBL_FLASH_REQ))
		return false;

	while (size) {
		u32 len;
		u32 offset;
		u32 iatvr;

		if (FUNC3(AF2_SERIAL_FLASH, &a->flags2))
			iatvr = MW_DATA_ADDR_SER_FLASH + (from & -WINDOW_SIZE);
		else
			iatvr = MW_DATA_ADDR_PAR_FLASH + (from & -WINDOW_SIZE);

		FUNC1(a, iatvr);
		offset = from & (WINDOW_SIZE - 1);
		len = size;

		if (len > WINDOW_SIZE - offset)
			len = WINDOW_SIZE - offset;

		from += len;
		size -= len;

		while (len--) {
			*end++ = FUNC2(a, offset);
			offset++;
		}
	}

	/* Release flash access */
	FUNC0(a, DRBL_FLASH_DONE);
	return true;
}