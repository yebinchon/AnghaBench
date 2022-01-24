#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wwn_t ;
typedef  int u8 ;
struct bfa_fcs_rport_s {int dummy; } ;
struct TYPE_6__ {TYPE_1__* fcs; } ;
typedef  TYPE_2__ bfa_fcs_lport_t ;
struct TYPE_5__ {int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 int BFA_PREBOOT_BOOTLUN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct bfa_fcs_rport_s* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(bfa_fcs_lport_t *port)
{

	struct bfa_fcs_rport_s *rport;
	u8 nwwns;
	wwn_t  wwns[BFA_PREBOOT_BOOTLUN_MAX];
	int ii;

	FUNC2(port->fcs->bfa, &nwwns, wwns);

	for (ii = 0 ; ii < nwwns; ++ii) {
		rport = FUNC1(port, wwns[ii]);
		FUNC0(!rport);
	}
}