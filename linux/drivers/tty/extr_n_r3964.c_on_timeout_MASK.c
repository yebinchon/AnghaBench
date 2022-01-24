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
struct timer_list {int dummy; } ;
struct r3964_info {int state; int /*<<< orphan*/  rx_position; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAK ; 
 void* R3964_IDLE ; 
#define  R3964_RECEIVING 134 
#define  R3964_TX_REQUEST 133 
#define  R3964_WAIT_FOR_BCC 132 
#define  R3964_WAIT_FOR_RX_BUF 131 
#define  R3964_WAIT_FOR_RX_REPEAT 130 
#define  R3964_WAIT_FOR_TX_ACK 129 
#define  R3964_WAIT_ZVZ_BEFORE_TX_RETRY 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct r3964_info*) ; 
 struct r3964_info* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct r3964_info* pInfo ; 
 int /*<<< orphan*/  FUNC3 (struct r3964_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r3964_info*) ; 
 int /*<<< orphan*/  tmr ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct r3964_info *pInfo = FUNC2(pInfo, t, tmr);

	switch (pInfo->state) {
	case R3964_TX_REQUEST:
		FUNC0("TX_REQUEST - timeout");
		FUNC4(pInfo);
		break;
	case R3964_WAIT_ZVZ_BEFORE_TX_RETRY:
		FUNC3(pInfo, NAK);
		FUNC1(pInfo);
		FUNC4(pInfo);
		break;
	case R3964_WAIT_FOR_TX_ACK:
		FUNC0("WAIT_FOR_TX_ACK - timeout");
		FUNC4(pInfo);
		break;
	case R3964_WAIT_FOR_RX_BUF:
		FUNC0("WAIT_FOR_RX_BUF - timeout");
		FUNC3(pInfo, NAK);
		FUNC1(pInfo);
		pInfo->state = R3964_IDLE;
		break;
	case R3964_RECEIVING:
		FUNC0("RECEIVING - timeout after %d chars",
			 pInfo->rx_position);
		FUNC3(pInfo, NAK);
		FUNC1(pInfo);
		pInfo->state = R3964_IDLE;
		break;
	case R3964_WAIT_FOR_RX_REPEAT:
		FUNC0("WAIT_FOR_RX_REPEAT - timeout");
		pInfo->state = R3964_IDLE;
		break;
	case R3964_WAIT_FOR_BCC:
		FUNC0("WAIT_FOR_BCC - timeout");
		FUNC3(pInfo, NAK);
		FUNC1(pInfo);
		pInfo->state = R3964_IDLE;
		break;
	}
}