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
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {int dummy; } ;

/* Variables and functions */
 int RIO_ASM_INFO_CAR ; 
 int RIO_EXT_FTR_PTR_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_mport*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

u32
FUNC4(struct rio_mport * port, int local, u16 destid,
		      u8 hopcount, int ftr)
{
	u32 asm_info, ext_ftr_ptr, ftr_header;

	if (local)
		FUNC2(port, RIO_ASM_INFO_CAR, &asm_info);
	else
		FUNC3(port, destid, hopcount,
					 RIO_ASM_INFO_CAR, &asm_info);

	ext_ftr_ptr = asm_info & RIO_EXT_FTR_PTR_MASK;

	while (ext_ftr_ptr) {
		if (local)
			FUNC2(port, ext_ftr_ptr,
						 &ftr_header);
		else
			FUNC3(port, destid, hopcount,
						 ext_ftr_ptr, &ftr_header);
		if (FUNC0(ftr_header) == ftr)
			return ext_ftr_ptr;

		ext_ftr_ptr = FUNC1(ftr_header);
		if (!ext_ftr_ptr)
			break;
	}

	return 0;
}