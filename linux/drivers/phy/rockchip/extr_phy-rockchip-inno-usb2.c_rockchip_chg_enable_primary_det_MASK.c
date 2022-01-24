#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rockchip_usb2phy {TYPE_2__* phy_cfg; } ;
struct regmap {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  idm_sink_en; int /*<<< orphan*/  vdp_src_en; } ;
struct TYPE_4__ {TYPE_1__ chg_det; } ;

/* Variables and functions */
 struct regmap* FUNC0 (struct rockchip_usb2phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct rockchip_usb2phy *rphy,
					    bool en)
{
	struct regmap *base = FUNC0(rphy);

	FUNC1(base, &rphy->phy_cfg->chg_det.vdp_src_en, en);
	FUNC1(base, &rphy->phy_cfg->chg_det.idm_sink_en, en);
}