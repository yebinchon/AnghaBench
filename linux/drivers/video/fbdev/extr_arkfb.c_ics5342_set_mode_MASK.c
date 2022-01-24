#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct dac_info {int dummy; } ;
struct TYPE_2__ {int mode; } ;

/* Variables and functions */
 int DAC_MAX ; 
 TYPE_1__* FUNC0 (struct dac_info*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct dac_info*,int,int) ; 
 int* ics5342_mode_table ; 

__attribute__((used)) static int FUNC2(struct dac_info *info, int mode)
{
	u8 code;

	if (mode >= DAC_MAX)
		return -EINVAL;

	code = ics5342_mode_table[mode];

	if (! code)
		return -EINVAL;

	FUNC1(info, 6, code & 0xF0);
	FUNC0(info)->mode = mode;

	return 0;
}