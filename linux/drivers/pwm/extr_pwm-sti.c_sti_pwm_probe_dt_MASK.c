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
typedef  void* u32 ;
struct sti_pwm_compat_data {struct reg_field* reg_fields; void* cpt_num_devs; void* pwm_num_devs; } ;
struct sti_pwm_chip {void* pwm_cpt_int_stat; int /*<<< orphan*/  regmap; void* pwm_cpt_int_en; void* pwm_cpt_en; void* pwm_out_en; void* prescale_high; void* prescale_low; struct sti_pwm_compat_data* cdata; struct device* dev; } ;
struct reg_field {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 size_t PWMCLK_PRESCALE_HIGH ; 
 size_t PWMCLK_PRESCALE_LOW ; 
 size_t PWM_CPT_EN ; 
 size_t PWM_CPT_INT_EN ; 
 size_t PWM_CPT_INT_STAT ; 
 size_t PWM_OUT_EN ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,int /*<<< orphan*/ ,struct reg_field const) ; 
 int FUNC5 (struct device_node*,char*,void**) ; 

__attribute__((used)) static int FUNC6(struct sti_pwm_chip *pc)
{
	struct device *dev = pc->dev;
	const struct reg_field *reg_fields;
	struct device_node *np = dev->of_node;
	struct sti_pwm_compat_data *cdata = pc->cdata;
	u32 num_devs;
	int ret;

	ret = FUNC5(np, "st,pwm-num-chan", &num_devs);
	if (!ret)
		cdata->pwm_num_devs = num_devs;

	ret = FUNC5(np, "st,capture-num-chan", &num_devs);
	if (!ret)
		cdata->cpt_num_devs = num_devs;

	if (!cdata->pwm_num_devs && !cdata->cpt_num_devs) {
		FUNC3(dev, "No channels configured\n");
		return -EINVAL;
	}

	reg_fields = cdata->reg_fields;

	pc->prescale_low = FUNC4(dev, pc->regmap,
					reg_fields[PWMCLK_PRESCALE_LOW]);
	if (FUNC0(pc->prescale_low))
		return FUNC1(pc->prescale_low);

	pc->prescale_high = FUNC4(dev, pc->regmap,
					reg_fields[PWMCLK_PRESCALE_HIGH]);
	if (FUNC0(pc->prescale_high))
		return FUNC1(pc->prescale_high);


	pc->pwm_out_en = FUNC4(dev, pc->regmap,
						 reg_fields[PWM_OUT_EN]);
	if (FUNC0(pc->pwm_out_en))
		return FUNC1(pc->pwm_out_en);

	pc->pwm_cpt_en = FUNC4(dev, pc->regmap,
						 reg_fields[PWM_CPT_EN]);
	if (FUNC0(pc->pwm_cpt_en))
		return FUNC1(pc->pwm_cpt_en);

	pc->pwm_cpt_int_en = FUNC4(dev, pc->regmap,
						reg_fields[PWM_CPT_INT_EN]);
	if (FUNC0(pc->pwm_cpt_int_en))
		return FUNC1(pc->pwm_cpt_int_en);

	pc->pwm_cpt_int_stat = FUNC4(dev, pc->regmap,
						reg_fields[PWM_CPT_INT_STAT]);
	if (FUNC2(pc->pwm_cpt_int_stat))
		return FUNC1(pc->pwm_cpt_int_stat);

	return 0;
}