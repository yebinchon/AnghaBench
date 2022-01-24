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
typedef  int u32 ;
struct pinctrl_dev {int dummy; } ;
struct bm1880_pinctrl {TYPE_1__* pinconf; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  drv_bits; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 scalar_t__ BM1880_REG_MUX ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH 130 
#define  PIN_CONFIG_INPUT_SCHMITT_ENABLE 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC8 (unsigned int,unsigned int) ; 
 unsigned int FUNC9 (unsigned long) ; 
 struct bm1880_pinctrl* FUNC10 (struct pinctrl_dev*) ; 
 int FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct pinctrl_dev *pctldev,
				  unsigned int pin,
				  unsigned long *config)
{
	struct bm1880_pinctrl *pctrl = FUNC10(pctldev);
	unsigned int param = FUNC9(*config);
	unsigned int arg = 0;
	u32 regval, offset, bit_offset;
	int ret;

	offset = (pin >> 1) << 2;
	regval = FUNC11(pctrl->base + BM1880_REG_MUX + offset);

	switch (param) {
	case PIN_CONFIG_BIAS_PULL_UP:
		bit_offset = FUNC4(pin);
		arg = !!(regval & FUNC0(bit_offset));
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		bit_offset = FUNC3(pin);
		arg = !!(regval & FUNC0(bit_offset));
		break;
	case PIN_CONFIG_BIAS_DISABLE:
		bit_offset = FUNC2(pin);
		arg = !!(regval & FUNC0(bit_offset));
		break;
	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
		bit_offset = FUNC5(pin);
		arg = !!(regval & FUNC0(bit_offset));
		break;
	case PIN_CONFIG_SLEW_RATE:
		bit_offset = FUNC6(pin);
		arg = !!(regval & FUNC0(bit_offset));
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		bit_offset = FUNC1(pin);
		ret = FUNC7(pctrl->pinconf[pin].drv_bits,
					     !!(regval & FUNC0(bit_offset)));
		if (ret < 0)
			return ret;

		arg = ret;
		break;
	default:
		return -ENOTSUPP;
	}

	*config = FUNC8(param, arg);

	return 0;
}