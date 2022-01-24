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
typedef  int /*<<< orphan*/  u16 ;
struct tcpci {int /*<<< orphan*/  regmap; } ;
struct tcpc_dev {int dummy; } ;
struct pd_message {int /*<<< orphan*/  payload; int /*<<< orphan*/  header; } ;
typedef  enum tcpm_transmit_type { ____Placeholder_tcpm_transmit_type } tcpm_transmit_type ;

/* Variables and functions */
 int PD_RETRY_COUNT ; 
 int /*<<< orphan*/  TCPC_TRANSMIT ; 
 int TCPC_TRANSMIT_RETRY_SHIFT ; 
 int TCPC_TRANSMIT_TYPE_SHIFT ; 
 int /*<<< orphan*/  TCPC_TX_BYTE_CNT ; 
 int /*<<< orphan*/  TCPC_TX_DATA ; 
 int /*<<< orphan*/  TCPC_TX_HDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct tcpci* FUNC4 (struct tcpc_dev*) ; 
 int FUNC5 (struct tcpci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tcpc_dev *tcpc,
			     enum tcpm_transmit_type type,
			     const struct pd_message *msg)
{
	struct tcpci *tcpci = FUNC4(tcpc);
	u16 header = msg ? FUNC0(msg->header) : 0;
	unsigned int reg, cnt;
	int ret;

	cnt = msg ? FUNC1(header) * 4 : 0;
	ret = FUNC3(tcpci->regmap, TCPC_TX_BYTE_CNT, cnt + 2);
	if (ret < 0)
		return ret;

	ret = FUNC5(tcpci, TCPC_TX_HDR, header);
	if (ret < 0)
		return ret;

	if (cnt > 0) {
		ret = FUNC2(tcpci->regmap, TCPC_TX_DATA,
				       &msg->payload, cnt);
		if (ret < 0)
			return ret;
	}

	reg = (PD_RETRY_COUNT << TCPC_TRANSMIT_RETRY_SHIFT) |
		(type << TCPC_TRANSMIT_TYPE_SHIFT);
	ret = FUNC3(tcpci->regmap, TCPC_TRANSMIT, reg);
	if (ret < 0)
		return ret;

	return 0;
}