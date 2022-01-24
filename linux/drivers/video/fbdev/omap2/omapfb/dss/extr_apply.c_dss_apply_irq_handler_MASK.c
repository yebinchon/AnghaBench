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
typedef  int u32 ;
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {int busy; int /*<<< orphan*/  framedone_handler_data; int /*<<< orphan*/  (* framedone_handler ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  updating; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  data_lock ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  extra_updated_completion ; 
 struct mgr_priv_data* FUNC9 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC10 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC11 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct omap_overlay_manager* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(void *data, u32 mask)
{
	const int num_mgrs = FUNC4();
	int i;
	bool extra_updating;

	FUNC14(&data_lock);

	/* clear busy, updating flags, shadow_dirty flags */
	for (i = 0; i < num_mgrs; i++) {
		struct omap_overlay_manager *mgr;
		struct mgr_priv_data *mp;

		mgr = FUNC13(i);
		mp = FUNC9(mgr);

		if (!mp->enabled)
			continue;

		mp->updating = FUNC3(i);

		if (!FUNC11(mgr)) {
			bool was_busy = mp->busy;
			mp->busy = FUNC2(i);

			if (was_busy && !mp->busy)
				FUNC10(mgr);
		}
	}

	FUNC7();
	FUNC5();

	extra_updating = FUNC8();
	if (!extra_updating)
		FUNC0(&extra_updated_completion);

	/* call framedone handlers for manual update displays */
	for (i = 0; i < num_mgrs; i++) {
		struct omap_overlay_manager *mgr;
		struct mgr_priv_data *mp;

		mgr = FUNC13(i);
		mp = FUNC9(mgr);

		if (!FUNC11(mgr) || !mp->framedone_handler)
			continue;

		if (mask & FUNC1(i))
			mp->framedone_handler(mp->framedone_handler_data);
	}

	if (!FUNC12())
		FUNC6();

	FUNC15(&data_lock);
}