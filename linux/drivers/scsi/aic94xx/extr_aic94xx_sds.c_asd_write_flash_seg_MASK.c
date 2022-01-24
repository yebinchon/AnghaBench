#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {int bar; int method; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;
struct asd_ha_struct {TYPE_2__ hw_prof; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FAIL_WRITE_FLASH ; 
#define  FLASH_METHOD_A 129 
#define  FLASH_METHOD_B 128 
 int FUNC1 (struct asd_ha_struct*) ; 
 scalar_t__ FUNC2 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct asd_ha_struct*,int,int) ; 
 int FUNC4 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*,int,int const) ; 

int FUNC6(struct asd_ha_struct *asd_ha,
			const void *src, u32 dest_offset, u32 bytes_to_write)
{
	const u8 *src_buf;
	u32 nv_offset, reg, i;
	int err;

	reg = asd_ha->hw_prof.flash.bar;
	src_buf = NULL;

	err = FUNC1(asd_ha);
	if (err) {
		FUNC0("couldn't find the type of flash. err=%d\n", err);
		return err;
	}

	nv_offset = dest_offset;
	err = FUNC3(asd_ha, nv_offset, bytes_to_write);
	if (err) {
		FUNC0("Erase failed at offset:0x%x\n",
			nv_offset);
		return err;
	}

	err = FUNC4(asd_ha);
	if (err) {
		FUNC0("couldn't reset flash. err=%d\n", err);
		return err;
	}

	src_buf = (const u8 *)src;
	for (i = 0; i < bytes_to_write; i++) {
		/* Setup program command sequence */
		switch (asd_ha->hw_prof.flash.method) {
		case FLASH_METHOD_A:
		{
			FUNC5(asd_ha,
					(reg + 0xAAA), 0xAA);
			FUNC5(asd_ha,
					(reg + 0x555), 0x55);
			FUNC5(asd_ha,
					(reg + 0xAAA), 0xA0);
			FUNC5(asd_ha,
					(reg + nv_offset + i),
					(*(src_buf + i)));
			break;
		}
		case FLASH_METHOD_B:
		{
			FUNC5(asd_ha,
					(reg + 0x555), 0xAA);
			FUNC5(asd_ha,
					(reg + 0x2AA), 0x55);
			FUNC5(asd_ha,
					(reg + 0x555), 0xA0);
			FUNC5(asd_ha,
					(reg + nv_offset + i),
					(*(src_buf + i)));
			break;
		}
		default:
			break;
		}
		if (FUNC2(asd_ha,
				(nv_offset + i), 0) != 0) {
			FUNC0("aicx: Write failed at offset:0x%x\n",
				reg + nv_offset + i);
			return FAIL_WRITE_FLASH;
		}
	}

	err = FUNC4(asd_ha);
	if (err) {
		FUNC0("couldn't reset flash. err=%d\n", err);
		return err;
	}
	return 0;
}