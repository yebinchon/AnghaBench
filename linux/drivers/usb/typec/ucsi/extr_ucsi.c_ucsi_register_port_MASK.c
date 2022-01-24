#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ucsi_control {int dummy; } ;
struct TYPE_5__ {int op_mode; int partner_type; scalar_t__ connected; int /*<<< orphan*/  pwr_dir; scalar_t__ consumer; scalar_t__ provider; } ;
struct typec_capability {int* accessory; int /*<<< orphan*/  pr_set; int /*<<< orphan*/  dr_set; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  prefer_role; int /*<<< orphan*/  pd_revision; int /*<<< orphan*/  revision; int /*<<< orphan*/  type; int /*<<< orphan*/  data; } ;
struct ucsi_connector {int num; TYPE_2__ status; scalar_t__ partner; int /*<<< orphan*/  port; TYPE_2__ cap; struct ucsi* ucsi; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  work; struct typec_capability typec_cap; } ;
struct TYPE_4__ {int /*<<< orphan*/  pd_version; int /*<<< orphan*/  typec_version; } ;
struct ucsi {int /*<<< orphan*/  dev; TYPE_1__ cap; struct ucsi_connector* connector; } ;
typedef  enum typec_accessory { ____Placeholder_typec_accessory } typec_accessory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEC_ACCESSORY_AUDIO ; 
 int TYPEC_ACCESSORY_DEBUG ; 
 int /*<<< orphan*/  TYPEC_DEVICE ; 
 int /*<<< orphan*/  TYPEC_HOST ; 
 int /*<<< orphan*/  TYPEC_NO_PREFERRED_ROLE ; 
 int /*<<< orphan*/  TYPEC_PORT_DFP ; 
 int /*<<< orphan*/  TYPEC_PORT_DRD ; 
 int /*<<< orphan*/  TYPEC_PORT_DRP ; 
 int /*<<< orphan*/  TYPEC_PORT_SNK ; 
 int /*<<< orphan*/  TYPEC_PORT_SRC ; 
 int /*<<< orphan*/  TYPEC_PORT_UFP ; 
 int /*<<< orphan*/  FUNC3 (struct ucsi_control,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ucsi_control,int) ; 
 int UCSI_CONCAP_OPMODE_AUDIO_ACCESSORY ; 
 int UCSI_CONCAP_OPMODE_DEBUG_ACCESSORY ; 
 int UCSI_CONCAP_OPMODE_DFP ; 
 int UCSI_CONCAP_OPMODE_DRP ; 
 int UCSI_CONCAP_OPMODE_UFP ; 
#define  UCSI_CONSTAT_PARTNER_TYPE_DFP 129 
#define  UCSI_CONSTAT_PARTNER_TYPE_UFP 128 
 int /*<<< orphan*/  UCSI_RECIPIENT_CON ; 
 int /*<<< orphan*/  UCSI_RECIPIENT_SOP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct typec_capability*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ucsi_connector*) ; 
 int /*<<< orphan*/  ucsi_connector_change ; 
 int /*<<< orphan*/  ucsi_dr_swap ; 
 int /*<<< orphan*/  FUNC13 (struct ucsi_connector*) ; 
 int /*<<< orphan*/  ucsi_pr_swap ; 
 int /*<<< orphan*/  FUNC14 (struct ucsi_connector*) ; 
 int FUNC15 (struct ucsi_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ucsi_connector*) ; 
 int FUNC17 (struct ucsi*,struct ucsi_control*,TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC18(struct ucsi *ucsi, int index)
{
	struct ucsi_connector *con = &ucsi->connector[index];
	struct typec_capability *cap = &con->typec_cap;
	enum typec_accessory *accessory = cap->accessory;
	struct ucsi_control ctrl;
	int ret;

	FUNC0(&con->work, ucsi_connector_change);
	FUNC6(&con->complete);
	FUNC7(&con->lock);
	con->num = index + 1;
	con->ucsi = ucsi;

	/* Get connector capability */
	FUNC3(ctrl, con->num);
	ret = FUNC17(ucsi, &ctrl, &con->cap, sizeof(con->cap));
	if (ret < 0)
		return ret;

	if (con->cap.op_mode & UCSI_CONCAP_OPMODE_DRP)
		cap->data = TYPEC_PORT_DRD;
	else if (con->cap.op_mode & UCSI_CONCAP_OPMODE_DFP)
		cap->data = TYPEC_PORT_DFP;
	else if (con->cap.op_mode & UCSI_CONCAP_OPMODE_UFP)
		cap->data = TYPEC_PORT_UFP;

	if (con->cap.provider && con->cap.consumer)
		cap->type = TYPEC_PORT_DRP;
	else if (con->cap.provider)
		cap->type = TYPEC_PORT_SRC;
	else if (con->cap.consumer)
		cap->type = TYPEC_PORT_SNK;

	cap->revision = ucsi->cap.typec_version;
	cap->pd_revision = ucsi->cap.pd_version;
	cap->prefer_role = TYPEC_NO_PREFERRED_ROLE;

	if (con->cap.op_mode & UCSI_CONCAP_OPMODE_AUDIO_ACCESSORY)
		*accessory++ = TYPEC_ACCESSORY_AUDIO;
	if (con->cap.op_mode & UCSI_CONCAP_OPMODE_DEBUG_ACCESSORY)
		*accessory = TYPEC_ACCESSORY_DEBUG;

	cap->fwnode = FUNC13(con);
	cap->dr_set = ucsi_dr_swap;
	cap->pr_set = ucsi_pr_swap;

	/* Register the connector */
	con->port = FUNC9(ucsi->dev, cap);
	if (FUNC1(con->port))
		return FUNC2(con->port);

	/* Alternate modes */
	ret = FUNC15(con, UCSI_RECIPIENT_CON);
	if (ret)
		FUNC5(ucsi->dev, "con%d: failed to register alt modes\n",
			con->num);

	/* Get the status */
	FUNC4(ctrl, con->num);
	ret = FUNC17(ucsi, &ctrl, &con->status, sizeof(con->status));
	if (ret < 0) {
		FUNC5(ucsi->dev, "con%d: failed to get status\n", con->num);
		return 0;
	}

	FUNC14(con);
	FUNC11(con->port, con->status.pwr_dir);

	switch (con->status.partner_type) {
	case UCSI_CONSTAT_PARTNER_TYPE_UFP:
		FUNC10(con->port, TYPEC_HOST);
		break;
	case UCSI_CONSTAT_PARTNER_TYPE_DFP:
		FUNC10(con->port, TYPEC_DEVICE);
		break;
	default:
		break;
	}

	/* Check if there is already something connected */
	if (con->status.connected)
		FUNC16(con);

	if (con->partner) {
		ret = FUNC15(con, UCSI_RECIPIENT_SOP);
		if (ret)
			FUNC5(ucsi->dev,
				"con%d: failed to register alternate modes\n",
				con->num);
		else
			FUNC12(con);
	}

	FUNC8(con->num, &con->status);

	return 0;
}