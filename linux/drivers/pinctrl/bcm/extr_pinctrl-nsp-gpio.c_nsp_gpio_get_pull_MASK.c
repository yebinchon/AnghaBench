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
struct nsp_gpio {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_CTRL ; 
 int /*<<< orphan*/  NSP_PULL_DOWN_EN ; 
 int /*<<< orphan*/  NSP_PULL_UP_EN ; 
 int FUNC0 (struct nsp_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct nsp_gpio *chip, unsigned gpio,
			      bool *pull_up, bool *pull_down)
{
	unsigned long flags;

	FUNC1(&chip->lock, flags);
	*pull_up = FUNC0(chip, IO_CTRL, NSP_PULL_UP_EN, gpio);
	*pull_down = FUNC0(chip, IO_CTRL, NSP_PULL_DOWN_EN, gpio);
	FUNC2(&chip->lock, flags);
}