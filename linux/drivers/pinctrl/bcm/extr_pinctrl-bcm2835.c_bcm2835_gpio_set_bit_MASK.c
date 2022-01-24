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
struct bcm2835_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct bcm2835_pinctrl *pc,
		unsigned reg, unsigned bit)
{
	reg += FUNC1(bit) * 4;
	FUNC3(pc, reg, FUNC0(FUNC2(bit)));
}