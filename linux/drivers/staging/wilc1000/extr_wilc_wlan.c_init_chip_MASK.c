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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {TYPE_1__* hif_func; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* hif_read_reg ) (struct wilc*,int,int*) ;int (* hif_write_reg ) (struct wilc*,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WILC_BUS_ACQUIRE_ONLY ; 
 int /*<<< orphan*/  WILC_BUS_RELEASE_ONLY ; 
 int /*<<< orphan*/  FUNC1 (struct wilc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wilc*,int,int*) ; 
 int FUNC6 (struct wilc*,int,int) ; 
 int FUNC7 (struct wilc*,int,int) ; 
 int FUNC8 (struct wilc*,int) ; 

__attribute__((used)) static u32 FUNC9(struct net_device *dev)
{
	u32 chipid;
	u32 reg, ret = 0;
	struct wilc_vif *vif = FUNC3(dev);
	struct wilc *wilc = vif->wilc;

	FUNC1(wilc, WILC_BUS_ACQUIRE_ONLY);

	chipid = FUNC8(wilc, true);

	if ((chipid & 0xfff) != 0xa0) {
		ret = wilc->hif_func->hif_read_reg(wilc, 0x1118, &reg);
		if (!ret) {
			FUNC2(dev, "fail read reg 0x1118\n");
			goto release;
		}
		reg |= FUNC0(0);
		ret = wilc->hif_func->hif_write_reg(wilc, 0x1118, reg);
		if (!ret) {
			FUNC2(dev, "fail write reg 0x1118\n");
			goto release;
		}
		ret = wilc->hif_func->hif_write_reg(wilc, 0xc0000, 0x71);
		if (!ret) {
			FUNC2(dev, "fail write reg 0xc0000\n");
			goto release;
		}
	}

release:
	FUNC4(wilc, WILC_BUS_RELEASE_ONLY);

	return ret;
}