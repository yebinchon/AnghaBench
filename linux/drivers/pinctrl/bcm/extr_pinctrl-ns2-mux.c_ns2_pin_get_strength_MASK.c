#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct pinctrl_dev {int /*<<< orphan*/  dev; TYPE_2__* desc; } ;
struct ns2_pinctrl {int /*<<< orphan*/  lock; scalar_t__ pinconf_base; } ;
struct TYPE_6__ {int drive_shift; scalar_t__ offset; } ;
struct ns2_pin {TYPE_3__ pin_conf; } ;
struct TYPE_5__ {TYPE_1__* pins; } ;
struct TYPE_4__ {struct ns2_pin* drv_data; } ;

/* Variables and functions */
 int NS2_PIN_DRIVE_STRENGTH_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct ns2_pinctrl* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctrldev, unsigned int pin,
				 u16 *strength)
{
	struct ns2_pinctrl *pinctrl = FUNC1(pctrldev);
	struct ns2_pin *pin_data = pctrldev->desc->pins[pin].drv_data;
	u32 val;
	unsigned long flags;

	FUNC3(&pinctrl->lock, flags);
	val = FUNC2(pinctrl->pinconf_base + pin_data->pin_conf.offset);
	*strength = (val >> pin_data->pin_conf.drive_shift) &
					NS2_PIN_DRIVE_STRENGTH_MASK;
	*strength = (*strength + 1) * 2;
	FUNC4(&pinctrl->lock, flags);

	FUNC0(pctrldev->dev, "pin:%u get drive strength:%d mA\n",
		pin, *strength);
	return 0;
}