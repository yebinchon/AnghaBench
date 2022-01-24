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
struct nsp_gpio {scalar_t__ base; scalar_t__ io_ctrl; } ;
typedef  enum base_type { ____Placeholder_base_type } base_type ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int IO_CTRL ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline bool FUNC2(struct nsp_gpio *chip, enum base_type address,
			       unsigned int reg, unsigned gpio)
{
	if (address == IO_CTRL)
		return !!(FUNC1(chip->io_ctrl + reg) & FUNC0(gpio));
	else
		return !!(FUNC1(chip->base + reg) & FUNC0(gpio));
}