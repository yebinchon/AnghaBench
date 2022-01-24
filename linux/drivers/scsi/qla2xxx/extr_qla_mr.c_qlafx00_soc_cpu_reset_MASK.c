#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int FUNC0 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*,int,int) ; 
 int SOC_CORE_TIMER_REG ; 
 int SOC_FABRIC_CONFIG_REG ; 
 int SOC_FABRIC_CONTROL_REG ; 
 int SOC_FABRIC_RST_CONTROL_REG ; 
 int SOC_INTERRUPT_SOURCE_I_CONTROL_REG ; 
 int SOC_IRQ_ACK_REG ; 
 int SOC_PWR_MANAGEMENT_PWR_DOWN_REG ; 
 int SOC_SW_RST_CONTROL_REG_CORE0 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static inline void
FUNC7(scsi_qla_host_t *vha)
{
	unsigned long flags = 0;
	struct qla_hw_data *ha = vha->hw;
	int i, core;
	uint32_t cnt;
	uint32_t reg_val;

	FUNC4(&ha->hardware_lock, flags);

	FUNC1(ha, 0x80004, 0);
	FUNC1(ha, 0x82004, 0);

	/* stop the XOR DMA engines */
	FUNC1(ha, 0x60920, 0x02);
	FUNC1(ha, 0x60924, 0x02);
	FUNC1(ha, 0xf0920, 0x02);
	FUNC1(ha, 0xf0924, 0x02);

	/* stop the IDMA engines */
	reg_val = FUNC0(ha, 0x60840);
	reg_val &= ~(1<<12);
	FUNC1(ha, 0x60840, reg_val);

	reg_val = FUNC0(ha, 0x60844);
	reg_val &= ~(1<<12);
	FUNC1(ha, 0x60844, reg_val);

	reg_val = FUNC0(ha, 0x60848);
	reg_val &= ~(1<<12);
	FUNC1(ha, 0x60848, reg_val);

	reg_val = FUNC0(ha, 0x6084C);
	reg_val &= ~(1<<12);
	FUNC1(ha, 0x6084C, reg_val);

	for (i = 0; i < 100000; i++) {
		if ((FUNC0(ha, 0xd0000) & 0x10000000) == 0 &&
		    (FUNC0(ha, 0x10600) & 0x1) == 0)
			break;
		FUNC6(100);
	}

	/* Set all 4 cores in reset */
	for (i = 0; i < 4; i++) {
		FUNC1(ha,
		    (SOC_SW_RST_CONTROL_REG_CORE0 + 8*i), (0xF01));
		FUNC1(ha,
		    (SOC_SW_RST_CONTROL_REG_CORE0 + 4 + 8*i), (0x01010101));
	}

	/* Reset all units in Fabric */
	FUNC1(ha, SOC_FABRIC_RST_CONTROL_REG, (0x011f0101));

	/* */
	FUNC1(ha, 0x10610, 1);
	FUNC1(ha, 0x10600, 0);

	/* Set all 4 core Memory Power Down Registers */
	for (i = 0; i < 5; i++) {
		FUNC1(ha,
		    (SOC_PWR_MANAGEMENT_PWR_DOWN_REG + 4*i), (0x0));
	}

	/* Reset all interrupt control registers */
	for (i = 0; i < 115; i++) {
		FUNC1(ha,
		    (SOC_INTERRUPT_SOURCE_I_CONTROL_REG + 4*i), (0x0));
	}

	/* Reset Timers control registers. per core */
	for (core = 0; core < 4; core++)
		for (i = 0; i < 8; i++)
			FUNC1(ha,
			    (SOC_CORE_TIMER_REG + 0x100*core + 4*i), (0x0));

	/* Reset per core IRQ ack register */
	for (core = 0; core < 4; core++)
		FUNC1(ha,
		    (SOC_IRQ_ACK_REG + 0x100*core), (0x3FF));

	/* Set Fabric control and config to defaults */
	FUNC1(ha, SOC_FABRIC_CONTROL_REG, (0x2));
	FUNC1(ha, SOC_FABRIC_CONFIG_REG, (0x3));

	/* Kick in Fabric units */
	FUNC1(ha, SOC_FABRIC_RST_CONTROL_REG, (0x0));

	/* Kick in Core0 to start boot process */
	FUNC1(ha, SOC_SW_RST_CONTROL_REG_CORE0, (0xF00));

	FUNC5(&ha->hardware_lock, flags);

	/* Wait 10secs for soft-reset to complete. */
	for (cnt = 10; cnt; cnt--) {
		FUNC3(1000);
		FUNC2();
	}
}