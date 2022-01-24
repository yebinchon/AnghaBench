#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct viafb_gpio_cfg {TYPE_1__* vdev; struct viafb_gpio** active_gpios; } ;
struct viafb_gpio {int vg_mask_shift; int /*<<< orphan*/  vg_port_index; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIASR ; 
 struct viafb_gpio_cfg* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int nr)
{
	struct viafb_gpio_cfg *cfg = FUNC0(chip);
	u8 reg;
	struct viafb_gpio *gpio;
	unsigned long flags;

	FUNC1(&cfg->vdev->reg_lock, flags);
	gpio = cfg->active_gpios[nr];
	reg = FUNC3(VIASR, gpio->vg_port_index);
	FUNC2(&cfg->vdev->reg_lock, flags);
	return !!(reg & (0x04 << gpio->vg_mask_shift));
}