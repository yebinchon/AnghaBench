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
struct rockchip_usb3phy_port_cfg {int /*<<< orphan*/  usb3tousb2_en; int /*<<< orphan*/  external_psm; } ;
struct rockchip_typec_phy {int /*<<< orphan*/  mode; int /*<<< orphan*/  pipe_rst; int /*<<< orphan*/  uphy_rst; int /*<<< orphan*/  tcphy_rst; struct rockchip_usb3phy_port_cfg* port_cfgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct rockchip_typec_phy*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rockchip_typec_phy *tcphy)
{
	const struct rockchip_usb3phy_port_cfg *cfg = tcphy->port_cfgs;

	FUNC1(tcphy->tcphy_rst);
	FUNC1(tcphy->uphy_rst);
	FUNC1(tcphy->pipe_rst);

	/* select external psm clock */
	FUNC0(tcphy, &cfg->external_psm, 1);
	FUNC0(tcphy, &cfg->usb3tousb2_en, 0);

	tcphy->mode = MODE_DISCONNECT;
}