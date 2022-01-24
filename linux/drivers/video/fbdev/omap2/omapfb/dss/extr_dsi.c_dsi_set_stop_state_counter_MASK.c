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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DSI_TIMING1 ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,unsigned int,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int,int) ; 
 unsigned long FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct platform_device *dsidev,
		unsigned ticks, bool x4, bool x16)
{
	unsigned long fck;
	unsigned long total_ticks;
	u32 r;

	FUNC0(ticks > 0x1fff);

	/* ticks in DSI_FCK */
	fck = FUNC3(dsidev);

	r = FUNC4(dsidev, DSI_TIMING1);
	r = FUNC2(r, 1, 15, 15);	/* FORCE_TX_STOP_MODE_IO */
	r = FUNC2(r, x16 ? 1 : 0, 14, 14);	/* STOP_STATE_X16_IO */
	r = FUNC2(r, x4 ? 1 : 0, 13, 13);	/* STOP_STATE_X4_IO */
	r = FUNC2(r, ticks, 12, 0);	/* STOP_STATE_COUNTER_IO */
	FUNC5(dsidev, DSI_TIMING1, r);

	total_ticks = ticks * (x16 ? 16 : 1) * (x4 ? 4 : 1);

	FUNC1("STOP_STATE_COUNTER %lu ticks (%#x%s%s) = %lu ns\n",
			total_ticks,
			ticks, x4 ? " x4" : "", x16 ? " x16" : "",
			(total_ticks * 1000) / (fck / 1000 / 1000));
}