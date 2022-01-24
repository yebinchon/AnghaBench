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
struct owl_pinctrl {int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

__attribute__((used)) static void FUNC1(struct owl_pinctrl *pctrl, u32 reg, u32 arg,
				u32 bit, u32 width)
{
	u32 mask;

	mask = (1 << width) - 1;
	mask = mask << bit;

	FUNC0(pctrl->base + reg, mask, (arg << bit));
}