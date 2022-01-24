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
struct mtu3 {int /*<<< orphan*/  qmu_gpd_pool; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QMU_GPD_RING_SIZE ; 
 int QMU_GPD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct mtu3 *mtu)
{

	FUNC0(QMU_GPD_SIZE == 16, "QMU_GPD size SHOULD be 16B");

	mtu->qmu_gpd_pool = FUNC1("QMU_GPD", mtu->dev,
			QMU_GPD_RING_SIZE, QMU_GPD_SIZE, 0);

	if (!mtu->qmu_gpd_pool)
		return -ENOMEM;

	return 0;
}