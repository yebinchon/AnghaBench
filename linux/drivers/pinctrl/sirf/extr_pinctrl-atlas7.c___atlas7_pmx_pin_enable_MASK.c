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
typedef  size_t u32 ;
struct atlas7_pmx {scalar_t__* regs; int /*<<< orphan*/  dev; TYPE_1__* pctl_data; } ;
struct atlas7_pad_config {unsigned long mux_bit; scalar_t__ mux_reg; } ;
struct TYPE_2__ {struct atlas7_pad_config* confs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC_ANALOGUE ; 
 unsigned long FUNC_CLEAR_MASK ; 
 int FUNC1 (struct atlas7_pmx*,struct atlas7_pad_config*,size_t) ; 
 int FUNC2 (struct atlas7_pmx*,struct atlas7_pad_config*,size_t) ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,size_t,...) ; 
 unsigned long FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct atlas7_pmx *pmx,
				u32 pin, u32 func)
{
	struct atlas7_pad_config *conf;
	u32 bank;
	int ret;
	unsigned long regv;

	FUNC5("PMX DUMP ### pin#%d func:%d #### START >>>\n",
			pin, func);

	/* Get this Pad's descriptor from PINCTRL */
	conf = &pmx->pctl_data->confs[pin];
	bank = FUNC3(pin);

	/* Just enable the analog function of this pad */
	if (FUNC_ANALOGUE == func) {
		ret = FUNC1(pmx, conf, bank);
		if (ret)
			FUNC4(pmx->dev,
				"Convert pad#%d to analog failed, ret=%d\n",
				pin, ret);
		return ret;
	}

	/* Set Pads from analog to digital */
	ret = FUNC2(pmx, conf, bank);
	if (ret) {
		FUNC4(pmx->dev,
			"Convert pad#%d to digital failed, ret=%d\n",
			pin, ret);
		return ret;
	}

	/* Write to clear register to clear current function */
	FUNC7(FUNC_CLEAR_MASK << conf->mux_bit,
		pmx->regs[bank] + FUNC0(conf->mux_reg));

	/* Set target pad mux function */
	regv = FUNC6(pmx->regs[bank] + conf->mux_reg);
	regv &= ~(FUNC_CLEAR_MASK << conf->mux_bit);
	FUNC7(regv | (func << conf->mux_bit),
			pmx->regs[bank] + conf->mux_reg);

	regv = FUNC6(pmx->regs[bank] + conf->mux_reg);
	FUNC5("bank:%d reg:0x%04x val:0x%08lx\n",
		bank, conf->mux_reg, regv);

	return 0;
}