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
struct rio_mport {int dummy; } ;
struct cm_dev {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_wq; int /*<<< orphan*/  mport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rio_mport *mport, void *dev_id,
				int mbox, int slot)
{
	struct cm_dev *cm = dev_id;

	if (FUNC1(cm->mport) && !FUNC2(&cm->rx_work))
		FUNC0(cm->rx_wq, &cm->rx_work);
}