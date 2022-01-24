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
struct wilc_vif {int dummy; } ;
struct wilc {int vif_num; int /*<<< orphan*/  vif_mutex; struct wilc_vif** vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct wilc_vif *FUNC2(struct wilc *wl)
{
	int i;
	struct wilc_vif *vif = NULL;

	FUNC0(&wl->vif_mutex);
	for (i = 0; i < wl->vif_num; i++) {
		if (wl->vif[i]) {
			vif = wl->vif[i];
			break;
		}
	}
	FUNC1(&wl->vif_mutex);
	return vif;
}