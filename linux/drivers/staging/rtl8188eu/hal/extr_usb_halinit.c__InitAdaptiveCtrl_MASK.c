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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RATE_BITMAP_ALL ; 
 int /*<<< orphan*/  RATE_RRSR_CCK_ONLY_1M ; 
 int /*<<< orphan*/  REG_RL ; 
 int /*<<< orphan*/  REG_RRSR ; 
 int /*<<< orphan*/  REG_SPEC_SIFS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct adapter *Adapter)
{
	u16 value16;
	u32 value32;

	/*  Response Rate Set */
	value32 = FUNC4(Adapter, REG_RRSR);
	value32 &= ~RATE_BITMAP_ALL;
	value32 |= RATE_RRSR_CCK_ONLY_1M;
	FUNC6(Adapter, REG_RRSR, value32);

	/*  CF-END Threshold */

	/*  SIFS (used in NAV) */
	value16 = FUNC1(0x10) | FUNC2(0x10);
	FUNC5(Adapter, REG_SPEC_SIFS, value16);

	/*  Retry Limit */
	value16 = FUNC0(0x30) | FUNC3(0x30);
	FUNC5(Adapter, REG_RL, value16);
}