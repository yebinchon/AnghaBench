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
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct bcm2835_pinctrl*,unsigned int) ; 

__attribute__((used)) static inline int FUNC3(struct bcm2835_pinctrl *pc, unsigned reg,
		unsigned bit)
{
	reg += FUNC0(bit) * 4;
	return (FUNC2(pc, reg) >> FUNC1(bit)) & 1;
}