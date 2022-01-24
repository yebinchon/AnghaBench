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
typedef  int u16 ;
struct tcpci {int /*<<< orphan*/  port; int /*<<< orphan*/  regmap; } ;
struct pd_message {int /*<<< orphan*/  payload; int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TCPC_ALERT ; 
 int TCPC_ALERT_CC_STATUS ; 
 int TCPC_ALERT_POWER_STATUS ; 
 int TCPC_ALERT_RX_HARD_RST ; 
 int TCPC_ALERT_RX_STATUS ; 
 int TCPC_ALERT_TX_DISCARDED ; 
 int TCPC_ALERT_TX_FAILED ; 
 int TCPC_ALERT_TX_SUCCESS ; 
 int /*<<< orphan*/  TCPC_POWER_STATUS_MASK ; 
 int /*<<< orphan*/  TCPC_RX_BYTE_CNT ; 
 int /*<<< orphan*/  TCPC_RX_DATA ; 
 int /*<<< orphan*/  TCPC_RX_HDR ; 
 int /*<<< orphan*/  TCPC_TX_DISCARDED ; 
 int /*<<< orphan*/  TCPC_TX_FAILED ; 
 int /*<<< orphan*/  TCPC_TX_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcpci*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcpci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct pd_message*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

irqreturn_t FUNC12(struct tcpci *tcpci)
{
	u16 status;

	FUNC4(tcpci, TCPC_ALERT, &status);

	/*
	 * Clear alert status for everything except RX_STATUS, which shouldn't
	 * be cleared until we have successfully retrieved message.
	 */
	if (status & ~TCPC_ALERT_RX_STATUS)
		FUNC5(tcpci, TCPC_ALERT,
			      status & ~TCPC_ALERT_RX_STATUS);

	if (status & TCPC_ALERT_CC_STATUS)
		FUNC6(tcpci->port);

	if (status & TCPC_ALERT_POWER_STATUS) {
		unsigned int reg;

		FUNC3(tcpci->regmap, TCPC_POWER_STATUS_MASK, &reg);

		/*
		 * If power status mask has been reset, then the TCPC
		 * has reset.
		 */
		if (reg == 0xff)
			FUNC10(tcpci->port);
		else
			FUNC11(tcpci->port);
	}

	if (status & TCPC_ALERT_RX_STATUS) {
		struct pd_message msg;
		unsigned int cnt;
		u16 header;

		FUNC3(tcpci->regmap, TCPC_RX_BYTE_CNT, &cnt);

		FUNC4(tcpci, TCPC_RX_HDR, &header);
		msg.header = FUNC1(header);

		if (FUNC0(cnt > sizeof(msg.payload)))
			cnt = sizeof(msg.payload);

		if (cnt > 0)
			FUNC2(tcpci->regmap, TCPC_RX_DATA,
					&msg.payload, cnt);

		/* Read complete, clear RX status alert bit */
		FUNC5(tcpci, TCPC_ALERT, TCPC_ALERT_RX_STATUS);

		FUNC8(tcpci->port, &msg);
	}

	if (status & TCPC_ALERT_RX_HARD_RST)
		FUNC7(tcpci->port);

	if (status & TCPC_ALERT_TX_SUCCESS)
		FUNC9(tcpci->port, TCPC_TX_SUCCESS);
	else if (status & TCPC_ALERT_TX_DISCARDED)
		FUNC9(tcpci->port, TCPC_TX_DISCARDED);
	else if (status & TCPC_ALERT_TX_FAILED)
		FUNC9(tcpci->port, TCPC_TX_FAILED);

	return IRQ_HANDLED;
}