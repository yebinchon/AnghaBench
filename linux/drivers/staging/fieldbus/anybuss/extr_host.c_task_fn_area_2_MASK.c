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
struct area_priv {int flags; int /*<<< orphan*/  count; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; scalar_t__ is_write; } ;
struct anybuss_host {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; int /*<<< orphan*/  ind_ab; int /*<<< orphan*/  power_on; } ;
struct ab_task {int /*<<< orphan*/  task_fn; scalar_t__ start_jiffies; struct area_priv area_pd; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EIO ; 
 int ETIMEDOUT ; 
 unsigned int IND_AP_ABITS ; 
 int /*<<< orphan*/  REG_IND_AP ; 
 scalar_t__ TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  task_fn_area_3 ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct anybuss_host *cd, struct ab_task *t)
{
	struct area_priv *pd = &t->area_pd;
	unsigned int ind_ap;
	int ret;

	if (!cd->power_on)
		return -EIO;
	FUNC5(cd->regmap, REG_IND_AP, &ind_ap);
	if (!(FUNC0(&cd->ind_ab) & pd->flags)) {
		/* we don't own the area yet */
		if (FUNC6(jiffies, t->start_jiffies + TIMEOUT)) {
			FUNC1(cd->dev, "timeout waiting for area");
			FUNC2();
			return -ETIMEDOUT;
		}
		return -EINPROGRESS;
	}
	/* we own the area, do what we're here to do */
	if (pd->is_write)
		FUNC4(cd->regmap, pd->addr, pd->buf,
				  pd->count);
	else
		FUNC3(cd->regmap, pd->addr, pd->buf,
				 pd->count);
	/* ask to release the area, must use unlocked release */
	ind_ap &= ~IND_AP_ABITS;
	ind_ap |= pd->flags;
	ret = FUNC7(cd->regmap, ind_ap);
	if (ret)
		return ret;
	t->task_fn = task_fn_area_3;
	return -EINPROGRESS;
}