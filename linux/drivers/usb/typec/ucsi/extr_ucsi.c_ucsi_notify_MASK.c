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
struct ucsi_connector {int /*<<< orphan*/  work; } ;
struct ucsi_cci {int connector_change; scalar_t__ ack_complete; scalar_t__ cmd_complete; scalar_t__ busy; scalar_t__ error; } ;
struct ucsi {TYPE_2__* ppm; int /*<<< orphan*/  flags; struct ucsi_connector* connector; int /*<<< orphan*/  complete; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {int /*<<< orphan*/  raw_cci; struct ucsi_cci cci; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_PENDING ; 
 int /*<<< orphan*/  COMMAND_PENDING ; 
 int /*<<< orphan*/  EVENT_PENDING ; 
 int /*<<< orphan*/  UCSI_BUSY ; 
 int /*<<< orphan*/  UCSI_ERROR ; 
 int /*<<< orphan*/  UCSI_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucsi*) ; 

void FUNC6(struct ucsi *ucsi)
{
	struct ucsi_cci *cci;

	/* There is no requirement to sync here, but no harm either. */
	FUNC5(ucsi);

	cci = &ucsi->ppm->data->cci;

	if (cci->error)
		ucsi->status = UCSI_ERROR;
	else if (cci->busy)
		ucsi->status = UCSI_BUSY;
	else
		ucsi->status = UCSI_IDLE;

	if (cci->cmd_complete && FUNC3(COMMAND_PENDING, &ucsi->flags)) {
		FUNC0(&ucsi->complete);
	} else if (cci->ack_complete && FUNC3(ACK_PENDING, &ucsi->flags)) {
		FUNC0(&ucsi->complete);
	} else if (cci->connector_change) {
		struct ucsi_connector *con;

		con = &ucsi->connector[cci->connector_change - 1];

		if (!FUNC2(EVENT_PENDING, &ucsi->flags))
			FUNC1(&con->work);
	}

	FUNC4(ucsi->ppm->data->raw_cci);
}