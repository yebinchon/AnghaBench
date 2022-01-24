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
struct imx_pinctrl_soc_info {TYPE_2__* pins; } ;
struct imx_pinctrl {int /*<<< orphan*/  dev; struct imx_pinctrl_soc_info* info; } ;
struct imx_pin_scu {void* config; void* mux_mode; } ;
struct TYPE_3__ {struct imx_pin_scu scu; } ;
struct imx_pin {unsigned int pin; TYPE_1__ conf; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,void*) ; 

void FUNC2(struct imx_pinctrl *ipctl,
			       unsigned int *pin_id, struct imx_pin *pin,
			       const __be32 **list_p)
{
	const struct imx_pinctrl_soc_info *info = ipctl->info;
	struct imx_pin_scu *pin_scu = &pin->conf.scu;
	const __be32 *list = *list_p;

	pin->pin = FUNC0(*list++);
	*pin_id = pin->pin;
	pin_scu->mux_mode = FUNC0(*list++);
	pin_scu->config = FUNC0(*list++);
	*list_p = list;

	FUNC1(ipctl->dev, "%s: 0x%x 0x%08lx", info->pins[pin->pin].name,
		pin_scu->mux_mode, pin_scu->config);
}