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
struct bcm2835_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(struct bcm2835_pinctrl *pc,
	unsigned reg, unsigned offset, bool enable)
{
	u32 value;
	reg += FUNC1(offset) * 4;
	value = FUNC3(pc, reg);
	if (enable)
		value |= FUNC0(FUNC2(offset));
	else
		value &= ~(FUNC0(FUNC2(offset)));
	FUNC4(pc, reg, value);
}