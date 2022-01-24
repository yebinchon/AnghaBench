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
struct omap_musb_board_data {int /*<<< orphan*/  (* set_phy_power ) (int /*<<< orphan*/ ) ;} ;
struct musb_hdrc_platform_data {struct omap_musb_board_data* board_data; } ;
struct musb {int /*<<< orphan*/  xceiv; int /*<<< orphan*/  dev_timer; struct device* controller; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct musb_hdrc_platform_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct musb *musb)
{
	struct device *dev = musb->controller;
	struct musb_hdrc_platform_data *plat = FUNC1(dev);
	struct omap_musb_board_data *data = plat->board_data;

	FUNC0(&musb->dev_timer);

	/* Shutdown the on-chip PHY and its PLL. */
	if (data->set_phy_power)
		data->set_phy_power(0);

	FUNC3(musb->xceiv);

	return 0;
}