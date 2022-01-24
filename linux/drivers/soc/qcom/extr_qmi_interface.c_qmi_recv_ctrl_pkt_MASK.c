#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  port; int /*<<< orphan*/  node; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; int /*<<< orphan*/  node; int /*<<< orphan*/  instance; int /*<<< orphan*/  service; } ;
struct qrtr_ctrl_pkt {TYPE_2__ client; TYPE_1__ server; int /*<<< orphan*/  cmd; } ;
struct qmi_handle {int dummy; } ;

/* Variables and functions */
#define  QRTR_TYPE_BYE 131 
#define  QRTR_TYPE_DEL_CLIENT 130 
#define  QRTR_TYPE_DEL_SERVER 129 
#define  QRTR_TYPE_NEW_SERVER 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qmi_handle*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qmi_handle*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qmi_handle*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qmi_handle*,int,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct qmi_handle *qmi,
			      const void *buf, size_t len)
{
	const struct qrtr_ctrl_pkt *pkt = buf;

	if (len < sizeof(struct qrtr_ctrl_pkt)) {
		FUNC1("ignoring short control packet\n");
		return;
	}

	switch (FUNC0(pkt->cmd)) {
	case QRTR_TYPE_BYE:
		FUNC2(qmi, FUNC0(pkt->client.node));
		break;
	case QRTR_TYPE_NEW_SERVER:
		FUNC5(qmi,
				    FUNC0(pkt->server.service),
				    FUNC0(pkt->server.instance),
				    FUNC0(pkt->server.node),
				    FUNC0(pkt->server.port));
		break;
	case QRTR_TYPE_DEL_SERVER:
		FUNC4(qmi,
				    FUNC0(pkt->server.node),
				    FUNC0(pkt->server.port));
		break;
	case QRTR_TYPE_DEL_CLIENT:
		FUNC3(qmi,
				    FUNC0(pkt->client.node),
				    FUNC0(pkt->client.port));
		break;
	}
}