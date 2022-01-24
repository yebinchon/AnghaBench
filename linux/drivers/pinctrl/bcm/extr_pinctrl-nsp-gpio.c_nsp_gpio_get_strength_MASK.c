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
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct nsp_gpio {int /*<<< orphan*/  lock; scalar_t__ io_ctrl; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int GPIO_DRV_STRENGTH_BITS ; 
 unsigned int NSP_GPIO_DRV_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct nsp_gpio *chip, unsigned gpio,
				 u16 *strength)
{
	unsigned int offset, shift;
	u32 val;
	unsigned long flags;
	int i;

	offset = NSP_GPIO_DRV_CTRL;
	shift = gpio;

	FUNC1(&chip->lock, flags);
	*strength = 0;
	for (i = (GPIO_DRV_STRENGTH_BITS - 1); i >= 0; i--) {
		val = FUNC3(chip->io_ctrl + offset) & FUNC0(shift);
		val >>= shift;
		*strength += (val << i);
		offset += 4;
	}

	/* convert to mA */
	*strength = (*strength + 1) * 2;
	FUNC2(&chip->lock, flags);

	return 0;
}