#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int (* hif_read_reg ) (struct wilc*,int /*<<< orphan*/ ,int*) ;int (* hif_write_reg ) (struct wilc*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int WILC_ABORT_REQ_BIT ; 
 int /*<<< orphan*/  WILC_BUS_ACQUIRE_AND_WAKEUP ; 
 int /*<<< orphan*/  WILC_BUS_RELEASE_ALLOW_SLEEP ; 
 int /*<<< orphan*/  WILC_FW_HOST_COMM ; 
 int /*<<< orphan*/  WILC_GP_REG_0 ; 
 int /*<<< orphan*/  FUNC1 (struct wilc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wilc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct wilc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct wilc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct wilc*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct wilc *wilc, struct wilc_vif *vif)
{
	u32 reg = 0;
	int ret;

	FUNC1(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);

	ret = wilc->hif_func->hif_read_reg(wilc, WILC_GP_REG_0, &reg);
	if (!ret) {
		FUNC2(vif->ndev, "Error while reading reg\n");
		FUNC3(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
		return -EIO;
	}

	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_0,
					(reg | WILC_ABORT_REQ_BIT));
	if (!ret) {
		FUNC2(vif->ndev, "Error while writing reg\n");
		FUNC3(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
		return -EIO;
	}

	ret = wilc->hif_func->hif_read_reg(wilc, WILC_FW_HOST_COMM, &reg);
	if (!ret) {
		FUNC2(vif->ndev, "Error while reading reg\n");
		FUNC3(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
		return -EIO;
	}
	reg = FUNC0(0);

	ret = wilc->hif_func->hif_write_reg(wilc, WILC_FW_HOST_COMM, reg);
	if (!ret) {
		FUNC2(vif->ndev, "Error while writing reg\n");
		FUNC3(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
		return -EIO;
	}

	FUNC3(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);

	return 0;
}