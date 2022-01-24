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
typedef  enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;

/* Variables and functions */
 int /*<<< orphan*/  TCPC_CC_STATUS ; 
 unsigned int TCPC_CC_STATUS_CC1_MASK ; 
 unsigned int TCPC_CC_STATUS_CC1_SHIFT ; 
 unsigned int TCPC_CC_STATUS_CC2_MASK ; 
 unsigned int TCPC_CC_STATUS_CC2_SHIFT ; 
 unsigned int TCPC_CC_STATUS_TERM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct tcpci* FUNC1 (struct tcpc_dev*) ; 
 int FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct tcpc_dev *tcpc,
			enum typec_cc_status *cc1, enum typec_cc_status *cc2)
{
	struct tcpci *tcpci = FUNC1(tcpc);
	unsigned int reg;
	int ret;

	ret = FUNC0(tcpci->regmap, TCPC_CC_STATUS, &reg);
	if (ret < 0)
		return ret;

	*cc1 = FUNC2((reg >> TCPC_CC_STATUS_CC1_SHIFT) &
				 TCPC_CC_STATUS_CC1_MASK,
				 reg & TCPC_CC_STATUS_TERM);
	*cc2 = FUNC2((reg >> TCPC_CC_STATUS_CC2_SHIFT) &
				 TCPC_CC_STATUS_CC2_MASK,
				 reg & TCPC_CC_STATUS_TERM);

	return 0;
}