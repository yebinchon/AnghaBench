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
typedef  size_t u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 size_t IQK_ADDA_REG_NUM ; 
 int /*<<< orphan*/  bMaskDWord ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,size_t,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC1(struct adapter *adapt, u32 *adda_reg,
			 bool is_path_a_on, bool is2t)
{
	u32 path_on;
	u32 i;

	if (!is2t) {
		path_on = 0x0bdb25a0;
		FUNC0(adapt, adda_reg[0], bMaskDWord, 0x0b1b25a0);
	} else {
		path_on = is_path_a_on ? 0x04db25a4 : 0x0b1b25a4;
		FUNC0(adapt, adda_reg[0], bMaskDWord, path_on);
	}

	for (i = 1; i < IQK_ADDA_REG_NUM; i++)
		FUNC0(adapt, adda_reg[i], bMaskDWord, path_on);
}