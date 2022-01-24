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
struct device {int dummy; } ;
struct ufs_hba {int /*<<< orphan*/  bsg_queue; struct device bsg_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

void FUNC3(struct ufs_hba *hba)
{
	struct device *bsg_dev = &hba->bsg_dev;

	if (!hba->bsg_queue)
		return;

	FUNC0(hba->bsg_queue);

	FUNC1(bsg_dev);
	FUNC2(bsg_dev);
}