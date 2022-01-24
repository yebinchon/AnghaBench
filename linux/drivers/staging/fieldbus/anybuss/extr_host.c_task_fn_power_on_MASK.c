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
struct anybuss_host {int /*<<< orphan*/  irq; int /*<<< orphan*/  card_boot; int /*<<< orphan*/  regmap; scalar_t__ power_on; } ;
struct ab_task {int /*<<< orphan*/  task_fn; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  REG_IND_AB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct anybuss_host*) ; 
 int /*<<< orphan*/  task_fn_power_on_2 ; 

__attribute__((used)) static int FUNC4(struct anybuss_host *cd,
			    struct ab_task *t)
{
	unsigned int dummy;

	if (cd->power_on)
		return 0;
	/*
	 * anybus docs: prevent false 'init done' interrupt by
	 * doing a dummy read of IND_AB register while in reset.
	 */
	FUNC1(cd->regmap, REG_IND_AB, &dummy);
	FUNC2(&cd->card_boot);
	FUNC0(cd->irq);
	FUNC3(cd);
	t->task_fn = task_fn_power_on_2;
	return -EINPROGRESS;
}