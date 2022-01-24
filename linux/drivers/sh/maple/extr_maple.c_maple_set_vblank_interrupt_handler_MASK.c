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
 int /*<<< orphan*/  HW_EVENT_VSYNC ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  maple_unsupported_device ; 
 int /*<<< orphan*/  maple_vblank_interrupt ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(void)
{
	return FUNC0(HW_EVENT_VSYNC, maple_vblank_interrupt,
		IRQF_SHARED, "maple bus VBLANK", &maple_unsupported_device);
}