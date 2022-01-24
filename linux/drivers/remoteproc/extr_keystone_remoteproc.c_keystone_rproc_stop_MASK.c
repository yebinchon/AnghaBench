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
struct rproc {struct keystone_rproc* priv; } ;
struct keystone_rproc {int /*<<< orphan*/  workqueue; int /*<<< orphan*/  irq_ring; int /*<<< orphan*/  irq_fault; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct keystone_rproc*) ; 
 int /*<<< orphan*/  FUNC2 (struct keystone_rproc*) ; 

__attribute__((used)) static int FUNC3(struct rproc *rproc)
{
	struct keystone_rproc *ksproc = rproc->priv;

	FUNC2(ksproc);
	FUNC1(ksproc->irq_fault, ksproc);
	FUNC1(ksproc->irq_ring, ksproc);
	FUNC0(&ksproc->workqueue);

	return 0;
}