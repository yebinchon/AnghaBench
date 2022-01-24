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
struct TYPE_2__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; scalar_t__ map; } ;
struct stm32_rproc {TYPE_1__ pdds; } ;
struct rproc {int /*<<< orphan*/  dev; struct stm32_rproc* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rproc*) ; 
 int FUNC3 (struct rproc*,int) ; 

__attribute__((used)) static int FUNC4(struct rproc *rproc)
{
	struct stm32_rproc *ddata = rproc->priv;
	int err;

	FUNC2(rproc);

	/* clear remote proc Deep Sleep */
	if (ddata->pdds.map) {
		err = FUNC1(ddata->pdds.map, ddata->pdds.reg,
					 ddata->pdds.mask, 0);
		if (err) {
			FUNC0(&rproc->dev, "failed to clear pdds\n");
			return err;
		}
	}

	err = FUNC3(rproc, false);
	if (err)
		return err;

	return FUNC3(rproc, true);
}