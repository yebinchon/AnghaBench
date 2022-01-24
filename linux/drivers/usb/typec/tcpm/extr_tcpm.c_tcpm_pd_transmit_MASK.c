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
struct tcpm_port {int tx_status; int message_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_complete; TYPE_1__* tcpc; } ;
struct pd_message {int /*<<< orphan*/  header; } ;
typedef  enum tcpm_transmit_type { ____Placeholder_tcpm_transmit_type } tcpm_transmit_type ;
struct TYPE_2__ {int (* pd_transmit ) (TYPE_1__*,int,struct pd_message const*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int PD_HEADER_ID_MASK ; 
 int /*<<< orphan*/  PD_T_TCPC_TX_TIMEOUT ; 
#define  TCPC_TX_DISCARDED 130 
#define  TCPC_TX_FAILED 129 
#define  TCPC_TX_SUCCESS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int,struct pd_message const*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcpm_port*,char*,int) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tcpm_port *port,
			    enum tcpm_transmit_type type,
			    const struct pd_message *msg)
{
	unsigned long timeout;
	int ret;

	if (msg)
		FUNC6(port, "PD TX, header: %#x", FUNC0(msg->header));
	else
		FUNC6(port, "PD TX, type: %#x", type);

	FUNC4(&port->tx_complete);
	ret = port->tcpc->pd_transmit(port->tcpc, type, msg);
	if (ret < 0)
		return ret;

	FUNC3(&port->lock);
	timeout = FUNC7(&port->tx_complete,
				FUNC1(PD_T_TCPC_TX_TIMEOUT));
	FUNC2(&port->lock);
	if (!timeout)
		return -ETIMEDOUT;

	switch (port->tx_status) {
	case TCPC_TX_SUCCESS:
		port->message_id = (port->message_id + 1) & PD_HEADER_ID_MASK;
		return 0;
	case TCPC_TX_DISCARDED:
		return -EAGAIN;
	case TCPC_TX_FAILED:
	default:
		return -EIO;
	}
}