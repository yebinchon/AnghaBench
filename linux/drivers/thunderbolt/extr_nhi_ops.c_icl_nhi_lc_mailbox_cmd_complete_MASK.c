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
struct tb_nhi {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VS_CAP_18 ; 
 int VS_CAP_18_DONE ; 
 int /*<<< orphan*/  VS_CAP_19 ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tb_nhi *nhi, int timeout)
{
	unsigned long end;
	u32 data;

	if (!timeout)
		goto clear;

	end = jiffies + FUNC0(timeout);
	do {
		FUNC2(nhi->pdev, VS_CAP_18, &data);
		if (data & VS_CAP_18_DONE)
			goto clear;
		FUNC1(100);
	} while (FUNC4(jiffies, end));

	return -ETIMEDOUT;

clear:
	/* Clear the valid bit */
	FUNC3(nhi->pdev, VS_CAP_19, 0);
	return 0;
}