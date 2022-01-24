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
struct gasket_internal_desc {struct gasket_driver_desc const* driver_desc; int /*<<< orphan*/  class; int /*<<< orphan*/  devs; int /*<<< orphan*/  mutex; } ;
struct gasket_driver_desc {int /*<<< orphan*/  name; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  module; int /*<<< orphan*/  driver_version; } ;
struct gasket_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int GASKET_DEV_MAX ; 
 int GASKET_FRAMEWORK_DESC_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gasket_internal_desc* g_descs ; 
 int /*<<< orphan*/  g_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,...) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC12(const struct gasket_driver_desc *driver_desc)
{
	int i, ret;
	int desc_idx = -1;
	struct gasket_internal_desc *internal;

	FUNC9("Loading %s driver version %s\n", driver_desc->name,
		 driver_desc->driver_version);
	/* Check for duplicates and find a free slot. */
	FUNC7(&g_mutex);

	for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
		if (g_descs[i].driver_desc == driver_desc) {
			FUNC10("%s driver already loaded/registered\n",
			       driver_desc->name);
			FUNC8(&g_mutex);
			return -EBUSY;
		}
	}

	/* This and the above loop could be combined, but this reads easier. */
	for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
		if (!g_descs[i].driver_desc) {
			g_descs[i].driver_desc = driver_desc;
			desc_idx = i;
			break;
		}
	}
	FUNC8(&g_mutex);

	if (desc_idx == -1) {
		FUNC10("too many drivers loaded, max %d\n",
		       GASKET_FRAMEWORK_DESC_MAX);
		return -EBUSY;
	}

	internal = &g_descs[desc_idx];
	FUNC6(&internal->mutex);
	FUNC5(internal->devs, 0, sizeof(struct gasket_dev *) * GASKET_DEV_MAX);
	internal->class =
		FUNC3(driver_desc->module, driver_desc->name);

	if (FUNC0(internal->class)) {
		FUNC10("Cannot register %s class [ret=%ld]\n",
		       driver_desc->name, FUNC2(internal->class));
		ret = FUNC2(internal->class);
		goto unregister_gasket_driver;
	}

	ret = FUNC11(FUNC1(driver_desc->major,
					   driver_desc->minor), GASKET_DEV_MAX,
				     driver_desc->name);
	if (ret) {
		FUNC10("cannot register %s char driver [ret=%d]\n",
		       driver_desc->name, ret);
		goto destroy_class;
	}

	return 0;

destroy_class:
	FUNC4(internal->class);

unregister_gasket_driver:
	FUNC7(&g_mutex);
	g_descs[desc_idx].driver_desc = NULL;
	FUNC8(&g_mutex);
	return ret;
}