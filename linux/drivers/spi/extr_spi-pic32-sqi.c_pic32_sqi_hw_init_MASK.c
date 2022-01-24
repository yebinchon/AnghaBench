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
typedef  unsigned int u32 ;
struct pic32_sqi {int cur_mode; scalar_t__ cur_speed; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ PESQI_BD_POLL_CTRL_REG ; 
 unsigned int PESQI_BURST_EN ; 
 scalar_t__ PESQI_CMD_THRES_REG ; 
 scalar_t__ PESQI_CONF_REG ; 
 unsigned int PESQI_CSEN_SHIFT ; 
 scalar_t__ PESQI_INT_THRES_REG ; 
 unsigned int PESQI_LANES_SHIFT ; 
 unsigned int PESQI_MODE ; 
 unsigned int PESQI_MODE_DMA ; 
 unsigned int PESQI_MODE_SHIFT ; 
 unsigned int PESQI_QUAD_LANE ; 
 unsigned int PESQI_RXTHR_MASK ; 
 unsigned int PESQI_RXTHR_SHIFT ; 
 unsigned int PESQI_SOFT_RESET ; 
 unsigned int PESQI_TXTHR_MASK ; 
 unsigned int PESQI_TXTHR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pic32_sqi*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct pic32_sqi *sqi)
{
	unsigned long flags;
	u32 val;

	/* Soft-reset of PESQI controller triggers interrupt.
	 * We are not yet ready to handle them so disable CPU
	 * interrupt for the time being.
	 */
	FUNC1(flags);

	/* assert soft-reset */
	FUNC5(PESQI_SOFT_RESET, sqi->regs + PESQI_CONF_REG);

	/* wait until clear */
	FUNC4(sqi->regs + PESQI_CONF_REG, val,
				  !(val & PESQI_SOFT_RESET), 1, 5000);

	/* disable all interrupts */
	FUNC2(sqi);

	/* Now it is safe to enable back CPU interrupt */
	FUNC0(flags);

	/* tx and rx fifo interrupt threshold */
	val = FUNC3(sqi->regs + PESQI_CMD_THRES_REG);
	val &= ~(PESQI_TXTHR_MASK << PESQI_TXTHR_SHIFT);
	val &= ~(PESQI_RXTHR_MASK << PESQI_RXTHR_SHIFT);
	val |= (1U << PESQI_TXTHR_SHIFT) | (1U << PESQI_RXTHR_SHIFT);
	FUNC5(val, sqi->regs + PESQI_CMD_THRES_REG);

	val = FUNC3(sqi->regs + PESQI_INT_THRES_REG);
	val &= ~(PESQI_TXTHR_MASK << PESQI_TXTHR_SHIFT);
	val &= ~(PESQI_RXTHR_MASK << PESQI_RXTHR_SHIFT);
	val |= (1U << PESQI_TXTHR_SHIFT) | (1U << PESQI_RXTHR_SHIFT);
	FUNC5(val, sqi->regs + PESQI_INT_THRES_REG);

	/* default configuration */
	val = FUNC3(sqi->regs + PESQI_CONF_REG);

	/* set mode: DMA */
	val &= ~PESQI_MODE;
	val |= PESQI_MODE_DMA << PESQI_MODE_SHIFT;
	FUNC5(val, sqi->regs + PESQI_CONF_REG);

	/* DATAEN - SQIID0-ID3 */
	val |= PESQI_QUAD_LANE << PESQI_LANES_SHIFT;

	/* burst/INCR4 enable */
	val |= PESQI_BURST_EN;

	/* CSEN - all CS */
	val |= 3U << PESQI_CSEN_SHIFT;
	FUNC5(val, sqi->regs + PESQI_CONF_REG);

	/* write poll count */
	FUNC5(0, sqi->regs + PESQI_BD_POLL_CTRL_REG);

	sqi->cur_speed = 0;
	sqi->cur_mode = -1;
}