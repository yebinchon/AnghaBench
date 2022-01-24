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
struct rcar_gen3_chan {TYPE_1__* rphys; } ;
struct phy {int dummy; } ;
struct of_phandle_args {int args_count; size_t* args; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NUM_OF_PHYS ; 
 size_t PHY_INDEX_BOTH_HC ; 
 struct rcar_gen3_chan* FUNC1 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC2(struct device *dev,
					    struct of_phandle_args *args)
{
	struct rcar_gen3_chan *ch = FUNC1(dev);

	if (args->args_count == 0)	/* For old version dts */
		return ch->rphys[PHY_INDEX_BOTH_HC].phy;
	else if (args->args_count > 1)	/* Prevent invalid args count */
		return FUNC0(-ENODEV);

	if (args->args[0] >= NUM_OF_PHYS)
		return FUNC0(-ENODEV);

	return ch->rphys[args->args[0]].phy;
}