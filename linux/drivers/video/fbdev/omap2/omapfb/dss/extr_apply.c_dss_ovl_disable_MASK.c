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
struct ovl_priv_data {int /*<<< orphan*/  enabled; } ;
struct omap_overlay {TYPE_1__* manager; } ;
struct TYPE_2__ {int /*<<< orphan*/ * output; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC0 (struct omap_overlay*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ovl_priv_data* FUNC3 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC3(ovl);
	unsigned long flags;
	int r;

	FUNC4(&apply_lock);

	if (!op->enabled) {
		r = 0;
		goto err;
	}

	if (ovl->manager == NULL || ovl->manager->output == NULL) {
		r = -EINVAL;
		goto err;
	}

	FUNC6(&data_lock, flags);

	FUNC0(ovl, false);
	FUNC2();
	FUNC1();

	FUNC7(&data_lock, flags);

	FUNC5(&apply_lock);

	return 0;

err:
	FUNC5(&apply_lock);
	return r;
}