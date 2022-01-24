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
 int /*<<< orphan*/  TCPC_RX_DETECT ; 
 unsigned int TCPC_RX_DETECT_HARD_RESET ; 
 unsigned int TCPC_RX_DETECT_SOP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct tcpci* FUNC1 (struct tcpc_dev*) ; 

__attribute__((used)) static int FUNC2(struct tcpc_dev *tcpc, bool enable)
{
	struct tcpci *tcpci = FUNC1(tcpc);
	unsigned int reg = 0;
	int ret;

	if (enable)
		reg = TCPC_RX_DETECT_SOP | TCPC_RX_DETECT_HARD_RESET;
	ret = FUNC0(tcpci->regmap, TCPC_RX_DETECT, reg);
	if (ret < 0)
		return ret;

	return 0;
}