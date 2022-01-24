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
struct snic {scalar_t__ wq_count; scalar_t__ cq_count; scalar_t__ intr_count; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_TYPE_CQ ; 
 int /*<<< orphan*/  RES_TYPE_INTR_CTRL ; 
 int /*<<< orphan*/  RES_TYPE_WQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct snic *snic)
{
	snic->wq_count = FUNC1(snic->vdev, RES_TYPE_WQ);
	FUNC0(snic->wq_count == 0);
	snic->cq_count = FUNC1(snic->vdev, RES_TYPE_CQ);
	FUNC0(snic->cq_count == 0);
	snic->intr_count = FUNC1(snic->vdev,
						  RES_TYPE_INTR_CTRL);
	FUNC0(snic->intr_count == 0);
}