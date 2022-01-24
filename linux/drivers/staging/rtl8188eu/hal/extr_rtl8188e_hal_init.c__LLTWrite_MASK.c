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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct adapter {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ POLLING_LLT_THRESHOLD ; 
 int /*<<< orphan*/  REG_LLT_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _FAIL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ _LLT_NO_ACTIVE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  _LLT_WRITE_ACCESS ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hal_init_c_ ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC8(struct adapter *padapter, u32 address, u32 data)
{
	s32	status = _SUCCESS;
	s32	count = 0;
	u32	value = FUNC1(address) | FUNC2(data) | FUNC3(_LLT_WRITE_ACCESS);
	u16	LLTReg = REG_LLT_INIT;

	FUNC7(padapter, LLTReg, value);

	/* polling */
	do {
		value = FUNC6(padapter, LLTReg);
		if (_LLT_NO_ACTIVE == FUNC4(value))
			break;

		if (count > POLLING_LLT_THRESHOLD) {
			FUNC0(_module_hal_init_c_, _drv_err_, ("Failed to polling write LLT done at address %d!\n", address));
			status = _FAIL;
			break;
		}
		FUNC5(5);
	} while (count++);

	return status;
}