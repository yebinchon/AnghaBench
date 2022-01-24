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
typedef  scalar_t__ u32 ;
struct wilc_vif {scalar_t__ ndev; scalar_t__ mac_opened; } ;
struct wilc {int vif_num; int /*<<< orphan*/  vif_mutex; struct wilc_vif** vif; scalar_t__ close; int /*<<< orphan*/  txq_thread_started; int /*<<< orphan*/  txq_event; } ;

/* Variables and functions */
 int ENOBUFS ; 
 scalar_t__ FLOW_CONTROL_LOWER_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct wilc*,scalar_t__*) ; 

__attribute__((used)) static int FUNC8(void *vp)
{
	int ret;
	u32 txq_count;
	struct wilc *wl = vp;

	FUNC0(&wl->txq_thread_started);
	while (1) {
		FUNC6(&wl->txq_event);

		if (wl->close) {
			FUNC0(&wl->txq_thread_started);

			while (!FUNC1())
				FUNC5();
			break;
		}
		do {
			ret = FUNC7(wl, &txq_count);
			if (txq_count < FLOW_CONTROL_LOWER_THRESHOLD) {
				int i;
				struct wilc_vif *ifc;

				FUNC2(&wl->vif_mutex);
				for (i = 0; i < wl->vif_num; i++) {
					ifc = wl->vif[i];
					if (ifc->mac_opened && ifc->ndev)
						FUNC4(ifc->ndev);
				}
				FUNC3(&wl->vif_mutex);
			}
		} while (ret == -ENOBUFS && !wl->close);
	}
	return 0;
}