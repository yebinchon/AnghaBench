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
typedef  int /*<<< orphan*/  wwn_t ;
struct bfa_fcs_rport_s {int dummy; } ;
struct bfa_fcs_lport_s {int /*<<< orphan*/  fcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPSM_EVENT_ADDRESS_DISC ; 
 struct bfa_fcs_rport_s* FUNC0 (struct bfa_fcs_lport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct bfa_fcs_rport_s *
FUNC3(struct bfa_fcs_lport_s *port, wwn_t rpwwn)
{
	struct bfa_fcs_rport_s *rport;
	FUNC2(port->fcs, rpwwn);
	rport = FUNC0(port, rpwwn, 0);
	if (!rport)
		return NULL;

	FUNC1(rport, RPSM_EVENT_ADDRESS_DISC);
	return rport;
}