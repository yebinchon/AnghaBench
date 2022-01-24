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
typedef  int /*<<< orphan*/  wwpn_str ;
typedef  int /*<<< orphan*/  wwnn_str ;
typedef  size_t uint ;
typedef  scalar_t__ u64 ;
struct fc_vport_identifiers {int disable; void* port_name; void* node_name; int /*<<< orphan*/  symbolic_name; int /*<<< orphan*/  vport_type; int /*<<< orphan*/  roles; } ;
struct fc_lport {scalar_t__ wwnn; int /*<<< orphan*/  host; } ;
struct cnic_fc_npiv_tbl {scalar_t__ count; int /*<<< orphan*/ * wwpn; int /*<<< orphan*/ * wwnn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,...) ; 
 int /*<<< orphan*/  FC_PORTTYPE_NPIV ; 
 int /*<<< orphan*/  FC_PORT_ROLE_FCP_INITIATOR ; 
 scalar_t__ MAX_NPIV_ENTRIES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_vport_identifiers*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,size_t,void*,void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint FUNC5(struct fc_lport *lport,
				      struct cnic_fc_npiv_tbl *npiv_tbl)
{
	struct fc_vport_identifiers vpid;
	uint i, created = 0;
	u64 wwnn = 0;
	char wwpn_str[32];
	char wwnn_str[32];

	if (npiv_tbl->count > MAX_NPIV_ENTRIES) {
		FUNC0(lport, "Exceeded count max of npiv table\n");
		goto done;
	}

	/* Sanity check the first entry to make sure it's not 0 */
	if (FUNC4(npiv_tbl->wwnn[0]) == 0 &&
	    FUNC4(npiv_tbl->wwpn[0]) == 0) {
		FUNC0(lport, "First NPIV table entries invalid.\n");
		goto done;
	}

	vpid.roles = FC_PORT_ROLE_FCP_INITIATOR;
	vpid.vport_type = FC_PORTTYPE_NPIV;
	vpid.disable = false;

	for (i = 0; i < npiv_tbl->count; i++) {
		wwnn = FUNC4(npiv_tbl->wwnn[i]);
		if (wwnn == 0) {
			/*
			 * If we get a 0 element from for the WWNN then assume
			 * the WWNN should be the same as the physical port.
			 */
			wwnn = lport->wwnn;
		}
		vpid.node_name = wwnn;
		vpid.port_name = FUNC4(npiv_tbl->wwpn[i]);
		FUNC3(vpid.symbolic_name, sizeof(vpid.symbolic_name),
		    "NPIV[%u]:%016llx-%016llx",
		    created, vpid.port_name, vpid.node_name);
		FUNC2(vpid.node_name, wwnn_str, sizeof(wwnn_str));
		FUNC2(vpid.port_name, wwpn_str, sizeof(wwpn_str));
		FUNC0(lport, "Creating vport %s:%s.\n", wwnn_str,
		    wwpn_str);
		if (FUNC1(lport->host, 0, &vpid))
			created++;
		else
			FUNC0(lport, "Failed to create vport\n");
	}
done:
	return created;
}