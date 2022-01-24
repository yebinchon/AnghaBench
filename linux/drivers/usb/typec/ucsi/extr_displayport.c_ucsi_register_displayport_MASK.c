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
typedef  int u8 ;
struct ucsi_dp {int override; int offset; struct typec_altmode* alt; struct ucsi_connector* con; int /*<<< orphan*/  work; } ;
struct ucsi_connector {int /*<<< orphan*/  port; } ;
struct typec_altmode_desc {int vdo; } ;
struct typec_altmode {int /*<<< orphan*/ * ops; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DP_CAP_DP_SIGNALING ; 
 int DP_CAP_RECEPTACLE ; 
 int /*<<< orphan*/  DP_PIN_ASSIGN_C ; 
 int /*<<< orphan*/  DP_PIN_ASSIGN_D ; 
 int /*<<< orphan*/  DP_PIN_ASSIGN_E ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct typec_altmode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct typec_altmode*) ; 
 struct ucsi_dp* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct typec_altmode*,struct ucsi_dp*) ; 
 struct typec_altmode* FUNC6 (int /*<<< orphan*/ ,struct typec_altmode_desc*) ; 
 int /*<<< orphan*/  FUNC7 (struct typec_altmode*) ; 
 int /*<<< orphan*/  ucsi_displayport_ops ; 
 int /*<<< orphan*/  ucsi_displayport_work ; 

struct typec_altmode *FUNC8(struct ucsi_connector *con,
						bool override, int offset,
						struct typec_altmode_desc *desc)
{
	u8 all_assignments = FUNC0(DP_PIN_ASSIGN_C) | FUNC0(DP_PIN_ASSIGN_D) |
			     FUNC0(DP_PIN_ASSIGN_E);
	struct typec_altmode *alt;
	struct ucsi_dp *dp;

	/* We can't rely on the firmware with the capabilities. */
	desc->vdo |= DP_CAP_DP_SIGNALING | DP_CAP_RECEPTACLE;

	/* Claiming that we support all pin assignments */
	desc->vdo |= all_assignments << 8;
	desc->vdo |= all_assignments << 16;

	alt = FUNC6(con->port, desc);
	if (FUNC3(alt))
		return alt;

	dp = FUNC4(&alt->dev, sizeof(*dp), GFP_KERNEL);
	if (!dp) {
		FUNC7(alt);
		return FUNC1(-ENOMEM);
	}

	FUNC2(&dp->work, ucsi_displayport_work);
	dp->override = override;
	dp->offset = offset;
	dp->con = con;
	dp->alt = alt;

	alt->ops = &ucsi_displayport_ops;
	FUNC5(alt, dp);

	return alt;
}