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
struct vme_bridge {int /*<<< orphan*/  irq_mtx; int /*<<< orphan*/  lm_resources; int /*<<< orphan*/  dma_resources; int /*<<< orphan*/  slave_resources; int /*<<< orphan*/  master_resources; int /*<<< orphan*/  vme_error_handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

struct vme_bridge *FUNC2(struct vme_bridge *bridge)
{
	FUNC0(&bridge->vme_error_handlers);
	FUNC0(&bridge->master_resources);
	FUNC0(&bridge->slave_resources);
	FUNC0(&bridge->dma_resources);
	FUNC0(&bridge->lm_resources);
	FUNC1(&bridge->irq_mtx);

	return bridge;
}