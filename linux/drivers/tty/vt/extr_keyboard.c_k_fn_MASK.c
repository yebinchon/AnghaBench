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
struct vc_data {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 scalar_t__* func_table ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc, unsigned char value, char up_flag)
{
	if (up_flag)
		return;

	if ((unsigned)value < FUNC0(func_table)) {
		if (func_table[value])
			FUNC2(vc, func_table[value]);
	} else
		FUNC1("k_fn called with value=%d\n", value);
}