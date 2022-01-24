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
struct seq_file {int dummy; } ;
struct pmic_mpp_state {int dummy; } ;
struct pmic_mpp_pad {int out_value; size_t function; char* power_source; char* aout_level; size_t pullup; char* dtest; scalar_t__ paired; scalar_t__ has_pullup; scalar_t__ output_enabled; scalar_t__ input_enabled; int /*<<< orphan*/  is_enabled; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_mpp_pad* drv_data; } ;

/* Variables and functions */
 char* PMIC_MPP_PHYSICAL_OFFSET ; 
 int /*<<< orphan*/  PMIC_MPP_REG_RT_STS ; 
 int PMIC_MPP_REG_RT_STS_VAL_MASK ; 
 struct pmic_mpp_state* FUNC0 (struct pinctrl_dev*) ; 
 char** pmic_mpp_functions ; 
 int FUNC1 (struct pmic_mpp_state*,struct pmic_mpp_pad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC4(struct pinctrl_dev *pctldev,
				     struct seq_file *s, unsigned pin)
{
	struct pmic_mpp_state *state = FUNC0(pctldev);
	struct pmic_mpp_pad *pad;
	int ret;

	static const char *const biases[] = {
		"0.6kOhm", "10kOhm", "30kOhm", "Disabled"
	};

	pad = pctldev->desc->pins[pin].drv_data;

	FUNC2(s, " mpp%-2d:", pin + PMIC_MPP_PHYSICAL_OFFSET);

	if (!pad->is_enabled) {
		FUNC3(s, " ---");
	} else {

		if (pad->input_enabled) {
			ret = FUNC1(state, pad, PMIC_MPP_REG_RT_STS);
			if (ret < 0)
				return;

			ret &= PMIC_MPP_REG_RT_STS_VAL_MASK;
			pad->out_value = ret;
		}

		FUNC2(s, " %-4s", pad->output_enabled ? "out" : "in");
		FUNC2(s, " %-7s", pmic_mpp_functions[pad->function]);
		FUNC2(s, " vin-%d", pad->power_source);
		FUNC2(s, " %d", pad->aout_level);
		if (pad->has_pullup)
			FUNC2(s, " %-8s", biases[pad->pullup]);
		FUNC2(s, " %-4s", pad->out_value ? "high" : "low");
		if (pad->dtest)
			FUNC2(s, " dtest%d", pad->dtest);
		if (pad->paired)
			FUNC3(s, " paired");
	}
}