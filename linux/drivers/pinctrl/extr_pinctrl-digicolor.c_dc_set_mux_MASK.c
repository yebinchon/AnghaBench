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
typedef  int u8 ;
struct pinctrl_dev {int dummy; } ;
struct dc_pinmap {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int*,int*) ; 
 struct dc_pinmap* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev, unsigned selector,
		      unsigned group)
{
	struct dc_pinmap *pmap = FUNC1(pctldev);
	int bit_off, reg_off;
	u8 reg;

	FUNC0(group, &reg_off, &bit_off);

	reg = FUNC2(pmap->regs + reg_off);
	reg &= ~(3 << bit_off);
	reg |= (selector << bit_off);
	FUNC3(reg, pmap->regs + reg_off);

	return 0;
}