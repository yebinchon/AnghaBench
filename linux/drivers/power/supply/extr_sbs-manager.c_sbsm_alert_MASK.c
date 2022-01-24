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
struct sbsm_data {int last_state; int last_state_cont; int supported_bats; TYPE_2__* muxc; int /*<<< orphan*/  psy; int /*<<< orphan*/  client; } ;
struct i2c_client {int dummy; } ;
typedef  enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;
struct TYPE_4__ {TYPE_1__** adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SBSM_BIT_AC_PRESENT ; 
 int /*<<< orphan*/  SBSM_CMD_BATSYSSTATE ; 
 int /*<<< orphan*/  SBSM_CMD_BATSYSSTATECONT ; 
 int SBSM_MAX_BATS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sbsm_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sbsm_do_alert ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i2c_client *client, enum i2c_alert_protocol prot,
		       unsigned int d)
{
	struct sbsm_data *sbsm = FUNC2(client);

	int ret, i, irq_bat = 0, state = 0;

	ret = FUNC4(sbsm->client, SBSM_CMD_BATSYSSTATE);
	if (ret >= 0) {
		irq_bat = ret ^ sbsm->last_state;
		sbsm->last_state = ret;
		state = ret;
	}

	ret = FUNC4(sbsm->client, SBSM_CMD_BATSYSSTATECONT);
	if ((ret >= 0) &&
	    ((ret ^ sbsm->last_state_cont) & SBSM_BIT_AC_PRESENT)) {
		irq_bat |= sbsm->supported_bats & state;
		FUNC3(sbsm->psy);
	}
	sbsm->last_state_cont = ret;

	for (i = 0; i < SBSM_MAX_BATS; i++) {
		if (irq_bat & FUNC0(i)) {
			FUNC1(&sbsm->muxc->adapter[i]->dev,
					      NULL, sbsm_do_alert);
		}
	}
}