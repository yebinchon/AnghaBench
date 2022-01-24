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
typedef  int /*<<< orphan*/  u32 ;
struct tcpm_port {int state; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  GET_STATUS_SEND ; 
 int /*<<< orphan*/  PD_MSG_CTRL_WAIT ; 
#define  SNK_READY 129 
#define  SRC_READY 128 
 unsigned int USB_PD_ADO_TYPE_BATT_STATUS_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcpm_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpm_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tcpm_port *port, const __le32 *payload,
			      int cnt)
{
	u32 p0 = FUNC0(payload[0]);
	unsigned int type = FUNC4(p0);

	if (!type) {
		FUNC1(port, "Alert message received with no type");
		return;
	}

	/* Just handling non-battery alerts for now */
	if (!(type & USB_PD_ADO_TYPE_BATT_STATUS_CHANGE)) {
		switch (port->state) {
		case SRC_READY:
		case SNK_READY:
			FUNC3(port, GET_STATUS_SEND, 0);
			break;
		default:
			FUNC2(port, PD_MSG_CTRL_WAIT);
			break;
		}
	}
}