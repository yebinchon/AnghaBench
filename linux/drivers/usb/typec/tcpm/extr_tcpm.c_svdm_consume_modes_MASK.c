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
struct typec_altmode_desc {int mode; int /*<<< orphan*/  vdo; int /*<<< orphan*/  svid; } ;
struct pd_mode_data {size_t altmodes; size_t svid_index; int /*<<< orphan*/ * svids; struct typec_altmode_desc* altmode_desc; } ;
struct tcpm_port {int /*<<< orphan*/  partner_altmode; struct pd_mode_data mode_data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (struct typec_altmode_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpm_port*,char*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tcpm_port *port, const __le32 *payload,
			       int cnt)
{
	struct pd_mode_data *pmdata = &port->mode_data;
	struct typec_altmode_desc *paltmode;
	int i;

	if (pmdata->altmodes >= FUNC0(port->partner_altmode)) {
		/* Already logged in svdm_consume_svids() */
		return;
	}

	for (i = 1; i < cnt; i++) {
		paltmode = &pmdata->altmode_desc[pmdata->altmodes];
		FUNC2(paltmode, 0, sizeof(*paltmode));

		paltmode->svid = pmdata->svids[pmdata->svid_index];
		paltmode->mode = i;
		paltmode->vdo = FUNC1(payload[i]);

		FUNC3(port, " Alternate mode %d: SVID 0x%04x, VDO %d: 0x%08x",
			 pmdata->altmodes, paltmode->svid,
			 paltmode->mode, paltmode->vdo);

		pmdata->altmodes++;
	}
}