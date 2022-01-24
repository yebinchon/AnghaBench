#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct npcm7xx_pinctrl {int /*<<< orphan*/  gcr_regmap; struct npcm7xx_gpio* gpio_bank; } ;
struct TYPE_5__ {unsigned int ngpio; int /*<<< orphan*/  parent; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; int /*<<< orphan*/  (* direction_output ) (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* direction_input ) (TYPE_1__*,unsigned int) ;} ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int ENOTSUPP ; 
 unsigned int NPCM7XX_GPIO_PER_BANK ; 
 scalar_t__ NPCM7XX_GP_N_DBNC ; 
 scalar_t__ NPCM7XX_GP_N_OEC ; 
 scalar_t__ NPCM7XX_GP_N_OES ; 
 scalar_t__ NPCM7XX_GP_N_OTYP ; 
 scalar_t__ NPCM7XX_GP_N_PD ; 
 scalar_t__ NPCM7XX_GP_N_PU ; 
#define  PIN_CONFIG_BIAS_DISABLE 137 
#define  PIN_CONFIG_BIAS_PULL_DOWN 136 
#define  PIN_CONFIG_BIAS_PULL_UP 135 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 134 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 133 
#define  PIN_CONFIG_DRIVE_STRENGTH 132 
#define  PIN_CONFIG_INPUT_DEBOUNCE 131 
#define  PIN_CONFIG_INPUT_ENABLE 130 
#define  PIN_CONFIG_OUTPUT 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int FUNC3 (struct npcm7xx_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct npcm7xx_gpio*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct npcm7xx_pinctrl *npcm,
				  unsigned int pin, unsigned long config)
{
	enum pin_config_param param = FUNC8(config);
	u16 arg = FUNC7(config);
	struct npcm7xx_gpio *bank =
		&npcm->gpio_bank[pin / NPCM7XX_GPIO_PER_BANK];
	int gpio = FUNC0(pin % bank->gc.ngpio);

	FUNC1(bank->gc.parent, "param=%d %d[GPIO]\n", param, pin);
	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_PU, gpio);
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_PD, gpio);
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_PU, gpio);
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_PD, gpio);
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_PD, gpio);
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_PU, gpio);
		break;
	case PIN_CONFIG_INPUT_ENABLE:
		FUNC2(gpio, bank->base + NPCM7XX_GP_N_OEC);
		bank->direction_input(&bank->gc, pin % bank->gc.ngpio);
		break;
	case PIN_CONFIG_OUTPUT:
		FUNC2(gpio, bank->base + NPCM7XX_GP_N_OES);
		bank->direction_output(&bank->gc, pin % bank->gc.ngpio, arg);
		break;
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_OTYP, gpio);
		break;
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_OTYP, gpio);
		break;
	case PIN_CONFIG_INPUT_DEBOUNCE:
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_DBNC, gpio);
		break;
	case PIN_CONFIG_SLEW_RATE:
		return FUNC4(bank, npcm->gcr_regmap, pin, arg);
	case PIN_CONFIG_DRIVE_STRENGTH:
		return FUNC3(npcm, pin, arg);
	default:
		return -ENOTSUPP;
	}

	return 0;
}