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
struct ovl_priv_data {int enabling; scalar_t__ enabled; } ;
struct omap_overlay {int /*<<< orphan*/  id; TYPE_1__* manager; } ;
struct TYPE_2__ {int /*<<< orphan*/ * output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (struct omap_overlay*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct ovl_priv_data* FUNC6 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC6(ovl);
	unsigned long flags;
	int r;

	FUNC7(&apply_lock);

	if (op->enabled) {
		r = 0;
		goto err1;
	}

	if (ovl->manager == NULL || ovl->manager->output == NULL) {
		r = -EINVAL;
		goto err1;
	}

	FUNC9(&data_lock, flags);

	op->enabling = true;

	r = FUNC2(ovl->manager);
	if (r) {
		FUNC0("failed to enable overlay %d: check_settings failed\n",
				ovl->id);
		goto err2;
	}

	FUNC4();

	op->enabling = false;
	FUNC1(ovl, true);

	FUNC5();
	FUNC3();

	FUNC10(&data_lock, flags);

	FUNC8(&apply_lock);

	return 0;
err2:
	op->enabling = false;
	FUNC10(&data_lock, flags);
err1:
	FUNC8(&apply_lock);
	return r;
}