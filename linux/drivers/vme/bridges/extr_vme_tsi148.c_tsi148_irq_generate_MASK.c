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
struct vme_bridge {struct tsi148_driver* driver_priv; } ;
struct tsi148_driver {int /*<<< orphan*/  vme_int; int /*<<< orphan*/  iack_queue; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TSI148_LCSR_VICR ; 
 int* TSI148_LCSR_VICR_IRQL ; 
 int TSI148_LCSR_VICR_STID_M ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tsi148_driver*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct vme_bridge *tsi148_bridge, int level,
	int statid)
{
	u32 tmp;
	struct tsi148_driver *bridge;

	bridge = tsi148_bridge->driver_priv;

	FUNC2(&bridge->vme_int);

	/* Read VICR register */
	tmp = FUNC0(bridge->base + TSI148_LCSR_VICR);

	/* Set Status/ID */
	tmp = (tmp & ~TSI148_LCSR_VICR_STID_M) |
		(statid & TSI148_LCSR_VICR_STID_M);
	FUNC1(tmp, bridge->base + TSI148_LCSR_VICR);

	/* Assert VMEbus IRQ */
	tmp = tmp | TSI148_LCSR_VICR_IRQL[level];
	FUNC1(tmp, bridge->base + TSI148_LCSR_VICR);

	/* XXX Consider implementing a timeout? */
	FUNC5(bridge->iack_queue,
		FUNC4(bridge));

	FUNC3(&bridge->vme_int);

	return 0;
}