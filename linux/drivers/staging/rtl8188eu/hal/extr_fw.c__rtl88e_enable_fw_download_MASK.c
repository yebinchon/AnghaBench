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
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_MCUFWDL ; 
 int FUNC0 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapt, bool enable)
{
	u8 tmp;

	if (enable) {
		tmp = FUNC0(adapt, REG_MCUFWDL);
		FUNC1(adapt, REG_MCUFWDL, tmp | 0x01);

		tmp = FUNC0(adapt, REG_MCUFWDL + 2);
		FUNC1(adapt, REG_MCUFWDL + 2, tmp & 0xf7);
	} else {
		tmp = FUNC0(adapt, REG_MCUFWDL);
		FUNC1(adapt, REG_MCUFWDL, tmp & 0xfe);

		FUNC1(adapt, REG_MCUFWDL + 1, 0x00);
	}
}