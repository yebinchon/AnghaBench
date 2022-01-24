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
struct i740fb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_ATT_W ; 
 int /*<<< orphan*/  VGA_SEQ_CLOCK_MODE ; 
 int /*<<< orphan*/  VGA_SEQ_I ; 
 int /*<<< orphan*/  FUNC0 (struct i740fb_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i740fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i740fb_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct i740fb_par *par)
{
	/* disable the display */
	FUNC2(par, VGA_SEQ_I, VGA_SEQ_CLOCK_MODE, 0x20, 0x20);

	FUNC0(par, 0x3DA);
	FUNC1(par, VGA_ATT_W, 0x00);	/* enable palette access */
}