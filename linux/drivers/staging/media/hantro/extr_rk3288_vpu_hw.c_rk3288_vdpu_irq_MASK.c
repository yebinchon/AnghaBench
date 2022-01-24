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
struct hantro_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;

/* Variables and functions */
 int /*<<< orphan*/  G1_REG_CONFIG ; 
 int /*<<< orphan*/  G1_REG_CONFIG_DEC_CLK_GATE_E ; 
 int /*<<< orphan*/  G1_REG_INTERRUPT ; 
 int G1_REG_INTERRUPT_DEC_RDY_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int VB2_BUF_STATE_DONE ; 
 int VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct hantro_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct hantro_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hantro_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct hantro_dev *vpu = dev_id;
	enum vb2_buffer_state state;
	u32 status;

	status = FUNC1(vpu, G1_REG_INTERRUPT);
	state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;

	FUNC2(vpu, 0, G1_REG_INTERRUPT);
	FUNC2(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);

	FUNC0(vpu, 0, state);

	return IRQ_HANDLED;
}