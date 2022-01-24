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
struct rcar_gen3_phy {int powered; struct rcar_gen3_chan* ch; } ;
struct rcar_gen3_chan {int /*<<< orphan*/  lock; scalar_t__ vbus; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rcar_gen3_phy* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_gen3_chan*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct phy *p)
{
	struct rcar_gen3_phy *rphy = FUNC2(p);
	struct rcar_gen3_chan *channel = rphy->ch;
	int ret = 0;

	FUNC0(&channel->lock);
	rphy->powered = false;

	if (!FUNC3(channel))
		goto out;

	if (channel->vbus)
		ret = FUNC4(channel->vbus);

out:
	FUNC1(&channel->lock);

	return ret;
}