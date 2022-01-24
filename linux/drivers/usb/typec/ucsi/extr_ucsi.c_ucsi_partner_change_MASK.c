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
struct TYPE_4__ {int partner_type; } ;
struct ucsi_connector {int /*<<< orphan*/  num; TYPE_1__* ucsi; int /*<<< orphan*/  complete; int /*<<< orphan*/  port; TYPE_2__ status; int /*<<< orphan*/  partner; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPEC_DEVICE ; 
 int /*<<< orphan*/  TYPEC_HOST ; 
#define  UCSI_CONSTAT_PARTNER_TYPE_DFP 129 
#define  UCSI_CONSTAT_PARTNER_TYPE_UFP 128 
 int /*<<< orphan*/  UCSI_RECIPIENT_SOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucsi_connector*) ; 
 int FUNC5 (struct ucsi_connector*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ucsi_connector *con)
{
	int ret;

	if (!con->partner)
		return;

	switch (con->status.partner_type) {
	case UCSI_CONSTAT_PARTNER_TYPE_UFP:
		FUNC3(con->port, TYPEC_HOST);
		break;
	case UCSI_CONSTAT_PARTNER_TYPE_DFP:
		FUNC3(con->port, TYPEC_DEVICE);
		break;
	default:
		break;
	}

	/* Complete pending data role swap */
	if (!FUNC1(&con->complete))
		FUNC0(&con->complete);

	/* Can't rely on Partner Flags field. Always checking the alt modes. */
	ret = FUNC5(con, UCSI_RECIPIENT_SOP);
	if (ret)
		FUNC2(con->ucsi->dev,
			"con%d: failed to register partner alternate modes\n",
			con->num);
	else
		FUNC4(con);
}