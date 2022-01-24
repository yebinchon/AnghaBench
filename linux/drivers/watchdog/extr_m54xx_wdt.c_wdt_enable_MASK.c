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

/* Variables and functions */
 int MCF_BUSCLK ; 
 int /*<<< orphan*/  MCF_GPT_GCIR0 ; 
 unsigned int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  MCF_GPT_GMS0 ; 
 unsigned int MCF_GPT_GMS_CE ; 
 unsigned int MCF_GPT_GMS_GPIO_MASK ; 
 unsigned int FUNC2 (int) ; 
 unsigned int MCF_GPT_GMS_OD ; 
 unsigned int MCF_GPT_GMS_TMS_GPIO ; 
 unsigned int MCF_GPT_GMS_WDEN ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int heartbeat ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned int gms0;

	/* preserve GPIO usage, if any */
	gms0 = FUNC3(MCF_GPT_GMS0);
	if (gms0 & MCF_GPT_GMS_TMS_GPIO)
		gms0 &= (MCF_GPT_GMS_TMS_GPIO | MCF_GPT_GMS_GPIO_MASK
							| MCF_GPT_GMS_OD);
	else
		gms0 = MCF_GPT_GMS_TMS_GPIO | MCF_GPT_GMS_OD;
	FUNC4(gms0, MCF_GPT_GMS0);
	FUNC4(FUNC1(heartbeat*(MCF_BUSCLK/0xffff)) |
			FUNC0(0xffff), MCF_GPT_GCIR0);
	gms0 |= FUNC2(0xA5) | MCF_GPT_GMS_WDEN | MCF_GPT_GMS_CE;
	FUNC4(gms0, MCF_GPT_GMS0);
}