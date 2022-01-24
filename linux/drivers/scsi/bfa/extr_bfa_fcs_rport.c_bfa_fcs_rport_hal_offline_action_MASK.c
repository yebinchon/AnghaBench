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
struct bfad_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  offlines; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  pid; int /*<<< orphan*/  itnim; struct bfa_fcs_lport_s* port; int /*<<< orphan*/  pwwn; TYPE_2__ stats; int /*<<< orphan*/  bfa_rport; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  BFA_RPORT_AEN_DISCONNECT ; 
 int /*<<< orphan*/  BFA_RPORT_AEN_OFFLINE ; 
 int BFA_STRING_32 ; 
 scalar_t__ BFA_TRUE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 scalar_t__ FUNC4 (struct bfa_fcs_lport_s*) ; 
 scalar_t__ FUNC5 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct bfa_fcs_rport_s *rport)
{
	struct bfa_fcs_lport_s *port = rport->port;
	struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
	char	lpwwn_buf[BFA_STRING_32];
	char	rpwwn_buf[BFA_STRING_32];

	if (!rport->bfa_rport) {
		FUNC8(rport);
		return;
	}

	rport->stats.offlines++;

	FUNC9(lpwwn_buf, FUNC3(port));
	FUNC9(rpwwn_buf, rport->pwwn);
	if (!FUNC0(rport->pid)) {
		if (FUNC5(rport->port) == BFA_TRUE) {
			FUNC1(KERN_ERR, bfad, bfa_log_level,
				"Remote port (WWN = %s) connectivity lost for "
				"logical port (WWN = %s)\n",
				rpwwn_buf, lpwwn_buf);
			FUNC7(rport,
				BFA_RPORT_AEN_DISCONNECT, NULL);
		} else {
			FUNC1(KERN_INFO, bfad, bfa_log_level,
				"Remote port (WWN = %s) offlined by "
				"logical port (WWN = %s)\n",
				rpwwn_buf, lpwwn_buf);
			FUNC7(rport,
				BFA_RPORT_AEN_OFFLINE, NULL);
		}
	}

	if (FUNC4(port)) {
		FUNC2(rport->itnim);
		if (!FUNC0(rport->pid))
			FUNC6(rport);
	}
}