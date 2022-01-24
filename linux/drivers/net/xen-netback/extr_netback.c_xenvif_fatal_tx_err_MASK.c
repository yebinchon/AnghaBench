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
struct xenvif {int disabled; int /*<<< orphan*/ * queues; scalar_t__ num_queues; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct xenvif *vif)
{
	FUNC0(vif->dev, "fatal error; disabling device\n");
	vif->disabled = true;
	/* Disable the vif from queue 0's kthread */
	if (vif->num_queues)
		FUNC1(&vif->queues[0]);
}