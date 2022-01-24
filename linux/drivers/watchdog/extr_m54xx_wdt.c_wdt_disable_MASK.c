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
 int /*<<< orphan*/  MCF_GPT_GMS0 ; 
 unsigned int MCF_GPT_GMS_CE ; 
 unsigned int MCF_GPT_GMS_WDEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned int gms0;

	/* disable watchdog */
	gms0 = FUNC0(MCF_GPT_GMS0);
	gms0 &= ~(MCF_GPT_GMS_WDEN | MCF_GPT_GMS_CE);
	FUNC1(gms0, MCF_GPT_GMS0);
}