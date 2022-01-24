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
typedef  int u32 ;
struct vme_bridge {struct ca91cx42_driver* driver_priv; } ;
struct ca91cx42_driver {int /*<<< orphan*/  vme_int; scalar_t__ base; int /*<<< orphan*/  iack_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ STATID ; 
 scalar_t__ VINT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct ca91cx42_driver*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vme_bridge *ca91cx42_bridge, int level,
	int statid)
{
	u32 tmp;
	struct ca91cx42_driver *bridge;

	bridge = ca91cx42_bridge->driver_priv;

	/* Universe can only generate even vectors */
	if (statid & 1)
		return -EINVAL;

	FUNC3(&bridge->vme_int);

	tmp = FUNC1(bridge->base + VINT_EN);

	/* Set Status/ID */
	FUNC2(statid << 24, bridge->base + STATID);

	/* Assert VMEbus IRQ */
	tmp = tmp | (1 << (level + 24));
	FUNC2(tmp, bridge->base + VINT_EN);

	/* Wait for IACK */
	FUNC5(bridge->iack_queue,
				 FUNC0(bridge, level));

	/* Return interrupt to low state */
	tmp = FUNC1(bridge->base + VINT_EN);
	tmp = tmp & ~(1 << (level + 24));
	FUNC2(tmp, bridge->base + VINT_EN);

	FUNC4(&bridge->vme_int);

	return 0;
}