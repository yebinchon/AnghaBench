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
struct iproc_gpio {scalar_t__ base; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline bool FUNC4(struct iproc_gpio *chip, unsigned int reg,
				  unsigned gpio)
{
	unsigned int offset = FUNC1(gpio, reg);
	unsigned int shift = FUNC2(gpio);

	return !!(FUNC3(chip->base + offset) & FUNC0(shift));
}