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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct fchs_s {int s_id; int d_id; int /*<<< orphan*/  ox_id; } ;
struct fc_echo_s {int dummy; } ;
struct bfa_rport_s {int dummy; } ;
struct bfa_fcxp_s {int dummy; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  lp_tag; TYPE_1__* fabric; int /*<<< orphan*/  fcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  vf_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_FALSE ; 
 int /*<<< orphan*/  FC_CLASS_3 ; 
 int /*<<< orphan*/  FC_MAX_PDUSZ ; 
 struct bfa_fcxp_s* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_lport_s*) ; 
 scalar_t__ FUNC2 (struct bfa_fcxp_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcxp_s*,struct bfa_rport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct fchs_s*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct fchs_s*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct fc_echo_s*,int) ; 

__attribute__((used)) static void
FUNC7(struct bfa_fcs_lport_s *port, struct fchs_s *rx_fchs,
		struct fc_echo_s *echo, u16 rx_len)
{
	struct fchs_s		fchs;
	struct bfa_fcxp_s	*fcxp;
	struct bfa_rport_s	*bfa_rport = NULL;
	int			len, pyld_len;

	FUNC4(port->fcs, rx_fchs->s_id);
	FUNC4(port->fcs, rx_fchs->d_id);

	fcxp = FUNC0(port->fcs, BFA_FALSE);
	if (!fcxp)
		return;

	len = FUNC5(&fchs, FUNC2(fcxp),
				rx_fchs->s_id, FUNC1(port),
				rx_fchs->ox_id);

	/*
	 * Copy the payload (if any) from the echo frame
	 */
	pyld_len = rx_len - sizeof(struct fchs_s);
	FUNC4(port->fcs, rx_len);
	FUNC4(port->fcs, pyld_len);

	if (pyld_len > len)
		FUNC6(((u8 *) FUNC2(fcxp)) +
			sizeof(struct fc_echo_s), (echo + 1),
			(pyld_len - sizeof(struct fc_echo_s)));

	FUNC3(fcxp, bfa_rport, port->fabric->vf_id, port->lp_tag,
			BFA_FALSE, FC_CLASS_3, pyld_len, &fchs, NULL, NULL,
			FC_MAX_PDUSZ, 0);
}