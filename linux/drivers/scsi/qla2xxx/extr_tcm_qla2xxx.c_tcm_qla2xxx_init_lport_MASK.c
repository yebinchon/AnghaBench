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
struct tcm_qla2xxx_lport {int /*<<< orphan*/  lport_fcport_map; int /*<<< orphan*/  lport_loopid_map; } ;
struct tcm_qla2xxx_fc_loopid {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tcm_qla2xxx_lport *lport)
{
	int rc;

	rc = FUNC2(&lport->lport_fcport_map);
	if (rc) {
		FUNC4("Unable to initialize lport->lport_fcport_map btree\n");
		return rc;
	}

	lport->lport_loopid_map =
		FUNC5(FUNC0(65536,
				   sizeof(struct tcm_qla2xxx_fc_loopid)));
	if (!lport->lport_loopid_map) {
		FUNC4("Unable to allocate lport->lport_loopid_map of %zu bytes\n",
		    sizeof(struct tcm_qla2xxx_fc_loopid) * 65536);
		FUNC1(&lport->lport_fcport_map);
		return -ENOMEM;
	}
	FUNC3("qla2xxx: Allocated lport_loopid_map of %zu bytes\n",
	       sizeof(struct tcm_qla2xxx_fc_loopid) * 65536);
	return 0;
}