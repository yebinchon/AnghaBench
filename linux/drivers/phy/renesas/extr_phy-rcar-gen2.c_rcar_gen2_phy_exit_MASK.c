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
struct rcar_gen2_phy {struct rcar_gen2_channel* channel; } ;
struct rcar_gen2_channel {int selected_phy; TYPE_1__* drv; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rcar_gen2_phy* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *p)
{
	struct rcar_gen2_phy *phy = FUNC1(p);
	struct rcar_gen2_channel *channel = phy->channel;

	FUNC0(channel->drv->clk);

	channel->selected_phy = -1;

	return 0;
}