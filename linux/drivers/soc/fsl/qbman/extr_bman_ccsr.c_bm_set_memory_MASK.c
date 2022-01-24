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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  REG_FBPR_AR ; 
 int /*<<< orphan*/  REG_FBPR_BAR ; 
 int /*<<< orphan*/  REG_FBPR_BARE ; 
 int __bman_requires_cleanup ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(u64 ba, u32 size)
{
	u32 bar, bare;
	u32 exp = FUNC3(size);
	/* choke if size isn't within range */
	FUNC0(size >= 4096 && size <= 1024*1024*1024 &&
		   FUNC4(size));
	/* choke if '[e]ba' has lower-alignment than 'size' */
	FUNC0(!(ba & (size - 1)));

	/* Check to see if BMan has already been initialized */
	bar = FUNC1(REG_FBPR_BAR);
	if (bar) {
		/* Maker sure ba == what was programmed) */
		bare = FUNC1(REG_FBPR_BARE);
		if (bare != FUNC8(ba) || bar != FUNC5(ba)) {
			FUNC6("Attempted to reinitialize BMan with different BAR, got 0x%llx read BARE=0x%x BAR=0x%x\n",
			       ba, bare, bar);
			return -ENOMEM;
		}
		FUNC7("BMan BAR already configured\n");
		__bman_requires_cleanup = 1;
		return 1;
	}

	FUNC2(REG_FBPR_BARE, FUNC8(ba));
	FUNC2(REG_FBPR_BAR, FUNC5(ba));
	FUNC2(REG_FBPR_AR, exp - 1);
	return 0;
}