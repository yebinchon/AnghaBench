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
struct wmt_pinctrl_data {TYPE_1__* pins; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int number; } ;

/* Variables and functions */
 struct wmt_pinctrl_data* FUNC0 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC1(struct pinctrl_dev *pctldev,
			      unsigned selector,
			      const unsigned **pins,
			      unsigned *num_pins)
{
	struct wmt_pinctrl_data *data = FUNC0(pctldev);

	*pins = &data->pins[selector].number;
	*num_pins = 1;

	return 0;
}