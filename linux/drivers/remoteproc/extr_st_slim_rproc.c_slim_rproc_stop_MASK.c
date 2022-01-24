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
struct st_slim_rproc {scalar_t__ slimcore; scalar_t__ peri; } ;
struct rproc {int /*<<< orphan*/  dev; struct st_slim_rproc* priv; } ;

/* Variables and functions */
 int SLIM_CLK_GATE_DIS ; 
 scalar_t__ SLIM_CLK_GATE_OFST ; 
 scalar_t__ SLIM_CMD_MASK_OFST ; 
 scalar_t__ SLIM_EN_OFST ; 
 int SLIM_EN_RUN ; 
 scalar_t__ SLIM_INT_MASK_OFST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct rproc *rproc)
{
	struct st_slim_rproc *slim_rproc = rproc->priv;
	u32 val;

	/* mask all (cmd & int) channels */
	FUNC3(0UL, slim_rproc->peri + SLIM_INT_MASK_OFST);
	FUNC3(0UL, slim_rproc->peri + SLIM_CMD_MASK_OFST);

	/* disable cpu pipeline clock */
	FUNC3(SLIM_CLK_GATE_DIS, slim_rproc->slimcore + SLIM_CLK_GATE_OFST);

	FUNC3(!SLIM_EN_RUN, slim_rproc->slimcore + SLIM_EN_OFST);

	val = FUNC2(slim_rproc->slimcore + SLIM_EN_OFST);
	if (val & SLIM_EN_RUN)
		FUNC1(&rproc->dev, "Failed to disable SLIM");

	FUNC0(&rproc->dev, "slim stopped\n");

	return 0;
}