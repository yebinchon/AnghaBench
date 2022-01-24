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
struct reg_info {scalar_t__ uV; scalar_t__ uA; int /*<<< orphan*/  reg; } ;
struct q6v5 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct q6v5 *qproc,
				 struct reg_info *regs, int count)
{
	int ret;
	int i;

	for (i = 0; i < count; i++) {
		if (regs[i].uV > 0) {
			ret = FUNC4(regs[i].reg,
					regs[i].uV, INT_MAX);
			if (ret) {
				FUNC0(qproc->dev,
					"Failed to request voltage for %d.\n",
						i);
				goto err;
			}
		}

		if (regs[i].uA > 0) {
			ret = FUNC3(regs[i].reg,
						 regs[i].uA);
			if (ret < 0) {
				FUNC0(qproc->dev,
					"Failed to set regulator mode\n");
				goto err;
			}
		}

		ret = FUNC2(regs[i].reg);
		if (ret) {
			FUNC0(qproc->dev, "Regulator enable failed\n");
			goto err;
		}
	}

	return 0;
err:
	for (; i >= 0; i--) {
		if (regs[i].uV > 0)
			FUNC4(regs[i].reg, 0, INT_MAX);

		if (regs[i].uA > 0)
			FUNC3(regs[i].reg, 0);

		FUNC1(regs[i].reg);
	}

	return ret;
}