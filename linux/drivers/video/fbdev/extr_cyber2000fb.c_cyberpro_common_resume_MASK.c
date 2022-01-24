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
struct cfb_info {int /*<<< orphan*/  fb; int /*<<< orphan*/  mem_ctl2; int /*<<< orphan*/  mem_ctl1; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_MEM_CTL1 ; 
 int /*<<< orphan*/  EXT_MEM_CTL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfb_info*) ; 

__attribute__((used)) static void FUNC3(struct cfb_info *cfb)
{
	FUNC2(cfb);

	/*
	 * Reprogram the MEM_CTL1 and MEM_CTL2 registers
	 */
	FUNC0(EXT_MEM_CTL1, cfb->mem_ctl1, cfb);
	FUNC0(EXT_MEM_CTL2, cfb->mem_ctl2, cfb);

	/*
	 * Restore the old video mode and the palette.
	 * We also need to tell fbcon to redraw the console.
	 */
	FUNC1(&cfb->fb);
}