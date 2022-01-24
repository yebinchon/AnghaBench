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
struct a38x_comphy_lane {int /*<<< orphan*/  n; TYPE_1__* priv; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct a38x_comphy_lane *lane,
			    unsigned int offset, u32 mask, u32 value)
{
	u32 val;
	int ret;

	ret = FUNC1(lane->base + offset, val,
						(val & mask) == value,
						1000, 150000);

	if (ret)
		FUNC0(lane->priv->dev,
			"comphy%u: timed out waiting for status\n", lane->n);

	return ret;
}