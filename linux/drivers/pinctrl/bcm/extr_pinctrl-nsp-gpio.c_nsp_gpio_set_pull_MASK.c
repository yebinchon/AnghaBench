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
struct nsp_gpio {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_CTRL ; 
 int /*<<< orphan*/  NSP_PULL_DOWN_EN ; 
 int /*<<< orphan*/  NSP_PULL_UP_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nsp_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct nsp_gpio *chip, unsigned gpio,
			     bool pull_up, bool pull_down)
{
	unsigned long flags;

	FUNC2(&chip->lock, flags);
	FUNC1(chip, IO_CTRL, NSP_PULL_DOWN_EN, gpio, pull_down);
	FUNC1(chip, IO_CTRL, NSP_PULL_UP_EN, gpio, pull_up);
	FUNC3(&chip->lock, flags);

	FUNC0(chip->dev, "gpio:%u set pullup:%d pulldown: %d\n",
		gpio, pull_up, pull_down);
	return 0;
}