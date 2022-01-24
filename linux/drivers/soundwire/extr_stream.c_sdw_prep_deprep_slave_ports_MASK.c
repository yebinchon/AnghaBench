#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sdw_slave_runtime {TYPE_2__* slave; int /*<<< orphan*/  direction; } ;
struct sdw_prepare_ch {size_t num; int ch_mask; int prepare; int /*<<< orphan*/  bank; } ;
struct sdw_port_runtime {size_t num; int ch_mask; } ;
struct sdw_dpn_prop {scalar_t__ imp_def_interrupts; int /*<<< orphan*/  ch_prep_timeout; int /*<<< orphan*/  simple_ch_prep_sm; } ;
struct TYPE_6__ {int /*<<< orphan*/  next_bank; } ;
struct sdw_bus {TYPE_1__ params; int /*<<< orphan*/ * dev; } ;
struct completion {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; struct completion* port_ready; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  SDW_OPS_PORT_POST_PREP ; 
 int /*<<< orphan*/  SDW_OPS_PORT_PRE_PREP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,size_t,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sdw_slave_runtime*,struct sdw_prepare_ch,int /*<<< orphan*/ ) ; 
 struct sdw_dpn_prop* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 unsigned int FUNC9 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sdw_bus *bus,
				       struct sdw_slave_runtime *s_rt,
				       struct sdw_port_runtime *p_rt,
				       bool prep)
{
	struct completion *port_ready;
	struct sdw_dpn_prop *dpn_prop;
	struct sdw_prepare_ch prep_ch;
	unsigned int time_left;
	bool intr = false;
	int ret = 0, val;
	u32 addr;

	prep_ch.num = p_rt->num;
	prep_ch.ch_mask = p_rt->ch_mask;

	dpn_prop = FUNC6(s_rt->slave,
					  s_rt->direction,
					  prep_ch.num);
	if (!dpn_prop) {
		FUNC2(bus->dev,
			"Slave Port:%d properties not found\n", prep_ch.num);
		return -EINVAL;
	}

	prep_ch.prepare = prep;

	prep_ch.bank = bus->params.next_bank;

	if (dpn_prop->imp_def_interrupts || !dpn_prop->simple_ch_prep_sm)
		intr = true;

	/*
	 * Enable interrupt before Port prepare.
	 * For Port de-prepare, it is assumed that port
	 * was prepared earlier
	 */
	if (prep && intr) {
		ret = FUNC4(s_rt->slave, p_rt->num, prep,
					     dpn_prop->imp_def_interrupts);
		if (ret < 0)
			return ret;
	}

	/* Inform slave about the impending port prepare */
	FUNC5(s_rt, prep_ch, SDW_OPS_PORT_PRE_PREP);

	/* Prepare Slave port implementing CP_SM */
	if (!dpn_prop->simple_ch_prep_sm) {
		addr = FUNC0(p_rt->num);

		if (prep)
			ret = FUNC8(s_rt->slave, addr,
					 0xFF, p_rt->ch_mask);
		else
			ret = FUNC8(s_rt->slave, addr, 0xFF, 0x0);

		if (ret < 0) {
			FUNC2(&s_rt->slave->dev,
				"Slave prep_ctrl reg write failed\n");
			return ret;
		}

		/* Wait for completion on port ready */
		port_ready = &s_rt->slave->port_ready[prep_ch.num];
		time_left = FUNC9(port_ready,
				FUNC3(dpn_prop->ch_prep_timeout));

		val = FUNC7(s_rt->slave, FUNC1(p_rt->num));
		val &= p_rt->ch_mask;
		if (!time_left || val) {
			FUNC2(&s_rt->slave->dev,
				"Chn prep failed for port:%d\n", prep_ch.num);
			return -ETIMEDOUT;
		}
	}

	/* Inform slaves about ports prepared */
	FUNC5(s_rt, prep_ch, SDW_OPS_PORT_POST_PREP);

	/* Disable interrupt after Port de-prepare */
	if (!prep && intr)
		ret = FUNC4(s_rt->slave, p_rt->num, prep,
					     dpn_prop->imp_def_interrupts);

	return ret;
}