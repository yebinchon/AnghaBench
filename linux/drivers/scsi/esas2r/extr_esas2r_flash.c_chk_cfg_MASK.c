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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ FBT_CPYR ; 
 scalar_t__ FBT_FLASH_VER ; 
 scalar_t__ FBT_SETUP ; 
 scalar_t__ FM_BUF_SZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC2(u8 *cfg, u32 length, u32 *flash_ver)
{
	u16 *pw = (u16 *)cfg - 1;
	u32 sz = 0;
	u32 len = length;

	if (len == 0)
		len = FM_BUF_SZ;

	if (flash_ver)
		*flash_ver = 0;

	while (true) {
		u16 type;
		u16 size;

		type = FUNC0(*pw--);
		size = FUNC0(*pw--);

		if (type != FBT_CPYR
		    && type != FBT_SETUP
		    && type != FBT_FLASH_VER)
			break;

		if (type == FBT_FLASH_VER
		    && flash_ver)
			*flash_ver = FUNC1(*(u32 *)(pw - 1));

		sz += size + (2 * sizeof(u16));
		pw -= size / sizeof(u16);

		if (sz > len - (2 * sizeof(u16)))
			break;
	}

	/* See if we are comparing the size to the specified length */
	if (length && sz != length)
		return 0;

	return sz;
}