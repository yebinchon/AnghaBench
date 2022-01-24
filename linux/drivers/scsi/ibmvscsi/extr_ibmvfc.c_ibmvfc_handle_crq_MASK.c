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
struct ibmvfc_host {int client_migrated; int /*<<< orphan*/  dev; int /*<<< orphan*/  pool; int /*<<< orphan*/  logged_in; int /*<<< orphan*/  state; } ;
struct ibmvfc_event {int /*<<< orphan*/  (* done ) (struct ibmvfc_event*) ;int /*<<< orphan*/  queue; int /*<<< orphan*/  timer; int /*<<< orphan*/  free; } ;
struct ibmvfc_crq {long ioba; int valid; long format; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  DID_REQUEUE ; 
 scalar_t__ IBMVFC_ASYNC_EVENT ; 
#define  IBMVFC_CRQ_CMD_RSP 132 
#define  IBMVFC_CRQ_INIT 131 
#define  IBMVFC_CRQ_INIT_COMPLETE 130 
#define  IBMVFC_CRQ_INIT_RSP 129 
#define  IBMVFC_CRQ_XPORT_EVENT 128 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_NONE ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_REENABLE ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_RESET ; 
 int /*<<< orphan*/  IBMVFC_LINK_DOWN ; 
 int /*<<< orphan*/  IBMVFC_NO_CRQ ; 
 long IBMVFC_PARTITION_MIGRATED ; 
 long IBMVFC_PARTNER_DEREGISTER ; 
 long IBMVFC_PARTNER_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 long FUNC8 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmvfc_event*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct ibmvfc_crq *crq, struct ibmvfc_host *vhost)
{
	long rc;
	struct ibmvfc_event *evt = (struct ibmvfc_event *)FUNC1(crq->ioba);

	switch (crq->valid) {
	case IBMVFC_CRQ_INIT_RSP:
		switch (crq->format) {
		case IBMVFC_CRQ_INIT:
			FUNC4(vhost->dev, "Partner initialized\n");
			/* Send back a response */
			rc = FUNC8(vhost);
			if (rc == 0)
				FUNC5(vhost);
			else
				FUNC3(vhost->dev, "Unable to send init rsp. rc=%ld\n", rc);
			break;
		case IBMVFC_CRQ_INIT_COMPLETE:
			FUNC4(vhost->dev, "Partner initialization complete\n");
			FUNC5(vhost);
			break;
		default:
			FUNC3(vhost->dev, "Unknown crq message type: %d\n", crq->format);
		}
		return;
	case IBMVFC_CRQ_XPORT_EVENT:
		vhost->state = IBMVFC_NO_CRQ;
		vhost->logged_in = 0;
		FUNC9(vhost, IBMVFC_HOST_ACTION_NONE);
		if (crq->format == IBMVFC_PARTITION_MIGRATED) {
			/* We need to re-setup the interpartition connection */
			FUNC4(vhost->dev, "Partition migrated, Re-enabling adapter\n");
			vhost->client_migrated = 1;
			FUNC7(vhost, DID_REQUEUE);
			FUNC6(vhost, IBMVFC_LINK_DOWN);
			FUNC9(vhost, IBMVFC_HOST_ACTION_REENABLE);
		} else if (crq->format == IBMVFC_PARTNER_FAILED || crq->format == IBMVFC_PARTNER_DEREGISTER) {
			FUNC3(vhost->dev, "Host partner adapter deregistered or failed (rc=%d)\n", crq->format);
			FUNC7(vhost, DID_ERROR);
			FUNC6(vhost, IBMVFC_LINK_DOWN);
			FUNC9(vhost, IBMVFC_HOST_ACTION_RESET);
		} else {
			FUNC3(vhost->dev, "Received unknown transport event from partner (rc=%d)\n", crq->format);
		}
		return;
	case IBMVFC_CRQ_CMD_RSP:
		break;
	default:
		FUNC3(vhost->dev, "Got an invalid message type 0x%02x\n", crq->valid);
		return;
	}

	if (crq->format == IBMVFC_ASYNC_EVENT)
		return;

	/* The only kind of payload CRQs we should get are responses to
	 * things we send. Make sure this response is to something we
	 * actually sent
	 */
	if (FUNC14(!FUNC11(&vhost->pool, evt))) {
		FUNC3(vhost->dev, "Returned correlation_token 0x%08llx is invalid!\n",
			crq->ioba);
		return;
	}

	if (FUNC14(FUNC0(&evt->free))) {
		FUNC3(vhost->dev, "Received duplicate correlation_token 0x%08llx!\n",
			crq->ioba);
		return;
	}

	FUNC2(&evt->timer);
	FUNC12(&evt->queue);
	FUNC10(evt);
	evt->done(evt);
}