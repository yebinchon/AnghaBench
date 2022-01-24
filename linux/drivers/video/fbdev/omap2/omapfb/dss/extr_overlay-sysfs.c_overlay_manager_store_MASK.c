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
struct omap_overlay_manager {int (* apply ) (struct omap_overlay_manager*) ;int /*<<< orphan*/  name; } ;
struct omap_overlay {int (* unset_manager ) (struct omap_overlay*) ;int (* set_manager ) (struct omap_overlay*,struct omap_overlay_manager*) ;struct omap_overlay_manager* manager; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t EINVAL ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 struct omap_overlay_manager* FUNC5 (int) ; 
 int FUNC6 (struct omap_overlay*) ; 
 int FUNC7 (struct omap_overlay_manager*) ; 
 int FUNC8 (struct omap_overlay*,struct omap_overlay_manager*) ; 
 int FUNC9 (struct omap_overlay_manager*) ; 
 scalar_t__ FUNC10 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC11(struct omap_overlay *ovl, const char *buf,
		size_t size)
{
	int i, r;
	struct omap_overlay_manager *mgr = NULL;
	struct omap_overlay_manager *old_mgr;
	int len = size;

	if (buf[size-1] == '\n')
		--len;

	if (len > 0) {
		for (i = 0; i < FUNC4(); ++i) {
			mgr = FUNC5(i);

			if (FUNC10(buf, mgr->name))
				break;

			mgr = NULL;
		}
	}

	if (len > 0 && mgr == NULL)
		return -EINVAL;

	if (mgr)
		FUNC0("manager %s found\n", mgr->name);

	if (mgr == ovl->manager)
		return size;

	old_mgr = ovl->manager;

	r = FUNC2();
	if (r)
		return r;

	/* detach old manager */
	if (old_mgr) {
		r = ovl->unset_manager(ovl);
		if (r) {
			FUNC1("detach failed\n");
			goto err;
		}

		r = old_mgr->apply(old_mgr);
		if (r)
			goto err;
	}

	if (mgr) {
		r = ovl->set_manager(ovl, mgr);
		if (r) {
			FUNC1("Failed to attach overlay\n");
			goto err;
		}

		r = mgr->apply(mgr);
		if (r)
			goto err;
	}

	FUNC3();

	return size;

err:
	FUNC3();
	return r;
}