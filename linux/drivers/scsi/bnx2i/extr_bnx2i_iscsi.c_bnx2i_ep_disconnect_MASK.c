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
struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct iscsi_conn {int dummy; } ;
struct bnx2i_hba {scalar_t__ age; int /*<<< orphan*/  eh_wait; int /*<<< orphan*/  net_dev_lock; int /*<<< orphan*/  adapter_state; } ;
struct bnx2i_endpoint {scalar_t__ state; scalar_t__ hba_age; struct bnx2i_hba* hba; struct bnx2i_conn* conn; scalar_t__ timestamp; } ;
struct bnx2i_conn {int /*<<< orphan*/ * ep; TYPE_1__* cls_conn; } ;
struct TYPE_2__ {struct iscsi_conn* dd_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_UP ; 
 scalar_t__ EP_STATE_CONNECT_START ; 
 scalar_t__ EP_STATE_DISCONN_TIMEDOUT ; 
 scalar_t__ EP_STATE_IDLE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2i_hba*,struct bnx2i_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2i_hba*,struct bnx2i_endpoint*) ; 
 scalar_t__ FUNC3 (struct bnx2i_endpoint*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iscsi_endpoint *ep)
{
	struct bnx2i_endpoint *bnx2i_ep;
	struct bnx2i_conn *bnx2i_conn = NULL;
	struct iscsi_conn *conn = NULL;
	struct bnx2i_hba *hba;

	bnx2i_ep = ep->dd_data;

	/* driver should not attempt connection cleanup until TCP_CONNECT
	 * completes either successfully or fails. Timeout is 9-secs, so
	 * wait for it to complete
	 */
	while ((bnx2i_ep->state == EP_STATE_CONNECT_START) &&
		!FUNC9(jiffies, bnx2i_ep->timestamp + (12 * HZ)))
		FUNC5(250);

	if (bnx2i_ep->conn) {
		bnx2i_conn = bnx2i_ep->conn;
		conn = bnx2i_conn->cls_conn->dd_data;
		FUNC4(conn);
	}
	hba = bnx2i_ep->hba;

	FUNC6(&hba->net_dev_lock);

	if (bnx2i_ep->state == EP_STATE_DISCONN_TIMEDOUT)
		goto out;

	if (bnx2i_ep->state == EP_STATE_IDLE)
		goto free_resc;

	if (!FUNC8(ADAPTER_STATE_UP, &hba->adapter_state) ||
	    (bnx2i_ep->hba_age != hba->age)) {
		FUNC0(hba, bnx2i_ep);
		goto free_resc;
	}

	/* Do all chip cleanup here */
	if (FUNC3(bnx2i_ep)) {
		FUNC7(&hba->net_dev_lock);
		return;
	}
free_resc:
	FUNC2(hba, bnx2i_ep);

	if (bnx2i_conn)
		bnx2i_conn->ep = NULL;

	FUNC1(ep);
out:
	FUNC7(&hba->net_dev_lock);

	FUNC10(&hba->eh_wait);
}