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

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_BCICTL1 ; 
 int /*<<< orphan*/  TWL4030_BCIICHG ; 
 int TWL4030_CGAIN ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	int curr;
	int ret;
	u8 bcictl1;

	curr = FUNC2(TWL4030_BCIICHG);
	if (curr < 0)
		return curr;

	ret = FUNC1(TWL4030_BCICTL1, &bcictl1);
	if (ret)
		return ret;

	return FUNC0(curr, bcictl1 & TWL4030_CGAIN);
}