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
struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MX1_PUEN ; 
 unsigned long FUNC0 (struct imx1_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 
 struct imx1_pinctrl* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
			     unsigned pin_id, unsigned long *config)
{
	struct imx1_pinctrl *ipctl = FUNC1(pctldev);

	*config = FUNC0(ipctl, pin_id, MX1_PUEN);

	return 0;
}