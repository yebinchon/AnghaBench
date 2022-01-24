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
struct twl4030_bci {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_BCIMSTATEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct twl4030_bci *bci)
{
	int ret;
	u8 state;

	ret = FUNC2(TWL4030_BCIMSTATEC, &state);
	if (ret) {
		FUNC1(bci->dev, "error reading BCIMSTATEC\n");
		return ret;
	}

	FUNC0(bci->dev, "state: %02x\n", state);

	return state;
}