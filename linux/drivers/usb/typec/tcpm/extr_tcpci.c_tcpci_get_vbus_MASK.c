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
struct tcpci {int /*<<< orphan*/  regmap; } ;
struct tcpc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPC_POWER_STATUS ; 
 unsigned int TCPC_POWER_STATUS_VBUS_PRES ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct tcpci* FUNC1 (struct tcpc_dev*) ; 

__attribute__((used)) static int FUNC2(struct tcpc_dev *tcpc)
{
	struct tcpci *tcpci = FUNC1(tcpc);
	unsigned int reg;
	int ret;

	ret = FUNC0(tcpci->regmap, TCPC_POWER_STATUS, &reg);
	if (ret < 0)
		return ret;

	return !!(reg & TCPC_POWER_STATUS_VBUS_PRES);
}