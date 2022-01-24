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
struct _adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ EFUSE_CLK_CTRL ; 
 scalar_t__ EFUSE_TEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct _adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct _adapter *adapter, u8 bPowerOn)
{
	u8 tmpu8 = 0;

	if (bPowerOn) {
		/* -----------------e-fuse pwr & clk reg ctrl ---------------
		 * Enable LDOE25 Macro Block
		 */
		tmpu8 = FUNC1(adapter, EFUSE_TEST + 3);
		tmpu8 |= 0x80;
		FUNC2(adapter, EFUSE_TEST + 3, tmpu8);
		FUNC0(20); /* for some platform , need some delay time */
		/* Change Efuse Clock for write action to 40MHZ */
		FUNC2(adapter, EFUSE_CLK_CTRL, 0x03);
		FUNC0(20); /* for some platform , need some delay time */
	} else {
		/* -----------------e-fuse pwr & clk reg ctrl -----------------
		 * Disable LDOE25 Macro Block
		 */
		tmpu8 = FUNC1(adapter, EFUSE_TEST + 3);
		tmpu8 &= 0x7F;
		FUNC2(adapter, EFUSE_TEST + 3, tmpu8);
		/* Change Efuse Clock for write action to 500K */
		FUNC2(adapter, EFUSE_CLK_CTRL, 0x02);
	}
}