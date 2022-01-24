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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 size_t FUNC1 (char*) ; 
 char FUNC2 (char) ; 

__attribute__((used)) static void FUNC3(
	char *param_buf)
{
	char *c;
	u32 iqn_size = FUNC1(param_buf), i;

	for (i = 0; i < iqn_size; i++) {
		c = &param_buf[i];
		if (!FUNC0(*c))
			continue;

		*c = FUNC2(*c);
	}
}