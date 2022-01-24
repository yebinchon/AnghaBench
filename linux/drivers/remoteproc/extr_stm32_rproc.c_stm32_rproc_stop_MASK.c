#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  reg; scalar_t__ map; } ;
struct stm32_rproc {TYPE_2__ pdds; int /*<<< orphan*/  rst; TYPE_1__* mb; } ;
struct rproc {scalar_t__ state; int /*<<< orphan*/  dev; struct stm32_rproc* priv; } ;
struct TYPE_3__ {scalar_t__ chan; } ;

/* Variables and functions */
 scalar_t__ RPROC_OFFLINE ; 
 int /*<<< orphan*/  STM32_MBX_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__,int*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rproc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rproc*,int) ; 

__attribute__((used)) static int FUNC7(struct rproc *rproc)
{
	struct stm32_rproc *ddata = rproc->priv;
	int err, dummy_data, idx;

	/* request shutdown of the remote processor */
	if (rproc->state != RPROC_OFFLINE) {
		idx = FUNC5(rproc, STM32_MBX_SHUTDOWN);
		if (idx >= 0 && ddata->mb[idx].chan) {
			/* a dummy data is sent to allow to block on transmit */
			err = FUNC2(ddata->mb[idx].chan,
						&dummy_data);
			if (err < 0)
				FUNC1(&rproc->dev, "warning: remote FW shutdown without ack\n");
		}
	}

	err = FUNC6(rproc, true);
	if (err)
		return err;

	err = FUNC4(ddata->rst);
	if (err) {
		FUNC0(&rproc->dev, "failed to assert the reset\n");
		return err;
	}

	/* to allow platform Standby power mode, set remote proc Deep Sleep */
	if (ddata->pdds.map) {
		err = FUNC3(ddata->pdds.map, ddata->pdds.reg,
					 ddata->pdds.mask, 1);
		if (err) {
			FUNC0(&rproc->dev, "failed to set pdds\n");
			return err;
		}
	}

	return 0;
}