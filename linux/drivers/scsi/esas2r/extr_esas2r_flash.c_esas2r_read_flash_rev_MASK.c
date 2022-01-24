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
typedef  int u16 ;
struct esas2r_adapter {int /*<<< orphan*/  flash_ver; } ;
typedef  int /*<<< orphan*/  bytes ;

/* Variables and functions */
 int FBT_CPYR ; 
 int FBT_FLASH_VER ; 
 int FBT_SETUP ; 
 scalar_t__ FLS_OFFSET_CPYR ; 
 int FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool FUNC4(struct esas2r_adapter *a)
{
	u8 bytes[256];
	u16 *pw;
	u16 *pwstart;
	u16 type;
	u16 size;
	u32 sz;

	sz = sizeof(bytes);
	pw = (u16 *)(bytes + sz);
	pwstart = (u16 *)bytes + 2;

	if (!FUNC1(a, bytes, FLS_OFFSET_CPYR - sz, sz))
		goto invalid_rev;

	while (pw >= pwstart) {
		pw--;
		type = FUNC2(*pw);
		pw--;
		size = FUNC2(*pw);
		pw -= size / 2;

		if (type == FBT_CPYR
		    || type == FBT_SETUP
		    || pw < pwstart)
			continue;

		if (type == FBT_FLASH_VER)
			a->flash_ver = FUNC3(*(u32 *)pw);

		break;
	}

invalid_rev:
	return FUNC0(a);
}