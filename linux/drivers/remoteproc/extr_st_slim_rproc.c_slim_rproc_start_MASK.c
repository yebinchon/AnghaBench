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
typedef  unsigned int u32 ;
struct st_slim_rproc {TYPE_1__* mem; scalar_t__ slimcore; scalar_t__ peri; } ;
struct device {int dummy; } ;
struct rproc {struct st_slim_rproc* priv; struct device dev; } ;
struct TYPE_2__ {scalar_t__ cpu_addr; } ;

/* Variables and functions */
 unsigned int SLIM_CLK_GATE_DIS ; 
 scalar_t__ SLIM_CLK_GATE_OFST ; 
 unsigned int SLIM_CLK_GATE_RESET ; 
 scalar_t__ SLIM_CMD_CLR_OFST ; 
 scalar_t__ SLIM_CMD_MASK_OFST ; 
 scalar_t__ SLIM_EN_OFST ; 
 unsigned int SLIM_EN_RUN ; 
 scalar_t__ SLIM_ID_OFST ; 
 scalar_t__ SLIM_INT_CLR_OFST ; 
 scalar_t__ SLIM_INT_MASK_OFST ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ SLIM_REV_ID_OFST ; 
 unsigned int SLIM_STBUS_SYNC_DIS ; 
 scalar_t__ SLIM_STBUS_SYNC_OFST ; 
 scalar_t__ SLIM_VER_OFST ; 
 size_t ST_SLIM_DMEM ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct rproc *rproc)
{
	struct device *dev = &rproc->dev;
	struct st_slim_rproc *slim_rproc = rproc->priv;
	unsigned long hw_id, hw_ver, fw_rev;
	u32 val;

	/* disable CPU pipeline clock & reset CPU pipeline */
	val = SLIM_CLK_GATE_DIS | SLIM_CLK_GATE_RESET;
	FUNC5(val, slim_rproc->slimcore + SLIM_CLK_GATE_OFST);

	/* disable SLIM core STBus sync */
	FUNC5(SLIM_STBUS_SYNC_DIS, slim_rproc->peri + SLIM_STBUS_SYNC_OFST);

	/* enable cpu pipeline clock */
	FUNC5(!SLIM_CLK_GATE_DIS,
		slim_rproc->slimcore + SLIM_CLK_GATE_OFST);

	/* clear int & cmd mailbox */
	FUNC5(~0U, slim_rproc->peri + SLIM_INT_CLR_OFST);
	FUNC5(~0U, slim_rproc->peri + SLIM_CMD_CLR_OFST);

	/* enable all channels cmd & int */
	FUNC5(~0U, slim_rproc->peri + SLIM_INT_MASK_OFST);
	FUNC5(~0U, slim_rproc->peri + SLIM_CMD_MASK_OFST);

	/* enable cpu */
	FUNC5(SLIM_EN_RUN, slim_rproc->slimcore + SLIM_EN_OFST);

	hw_id = FUNC4(slim_rproc->slimcore + SLIM_ID_OFST);
	hw_ver = FUNC4(slim_rproc->slimcore + SLIM_VER_OFST);

	fw_rev = FUNC3(slim_rproc->mem[ST_SLIM_DMEM].cpu_addr +
			SLIM_REV_ID_OFST);

	FUNC2(dev, "fw rev:%ld.%ld on SLIM %ld.%ld\n",
		 FUNC0(fw_rev), FUNC1(fw_rev),
		 hw_id, hw_ver);

	return 0;
}