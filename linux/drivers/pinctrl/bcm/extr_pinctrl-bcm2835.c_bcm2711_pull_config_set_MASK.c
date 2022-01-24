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
struct bcm2835_pinctrl {int dummy; } ;

/* Variables and functions */
 scalar_t__ GP_GPIO_PUP_PDN_CNTRL_REG0 ; 
 int PUD_2711_MASK ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (struct bcm2835_pinctrl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_pinctrl*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct bcm2835_pinctrl *pc,
				    unsigned int pin, unsigned int arg)
{
	u32 shifter;
	u32 value;
	u32 off;

	off = FUNC0(pin);
	shifter = FUNC1(pin);

	value = FUNC2(pc, GP_GPIO_PUP_PDN_CNTRL_REG0 + (off * 4));
	value &= ~(PUD_2711_MASK << shifter);
	value |= (arg << shifter);
	FUNC3(pc, GP_GPIO_PUP_PDN_CNTRL_REG0 + (off * 4), value);
}