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
struct xenvif {unsigned int num_queues; int /*<<< orphan*/ * queues; } ;
struct backend_info {struct xenvif* vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC3 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xenvif*) ; 
 int /*<<< orphan*/  FUNC6 (struct xenvif*) ; 

__attribute__((used)) static void FUNC7(struct backend_info *be)
{
	struct xenvif *vif = be->vif;

	if (vif) {
		unsigned int num_queues = vif->num_queues;
		unsigned int queue_index;

		FUNC2(vif);
#ifdef CONFIG_DEBUG_FS
		xenvif_debugfs_delif(vif);
#endif /* CONFIG_DEBUG_FS */
		FUNC6(vif);

		/* At this point some of the handlers may still be active
		 * so we need to have additional synchronization here.
		 */
		vif->num_queues = 0;
		FUNC0();

		for (queue_index = 0; queue_index < num_queues; ++queue_index)
			FUNC4(&vif->queues[queue_index]);

		FUNC1(vif->queues);
		vif->queues = NULL;

		FUNC5(vif);
	}
}