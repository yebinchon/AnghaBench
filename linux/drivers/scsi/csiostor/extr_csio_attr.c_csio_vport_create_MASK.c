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
typedef  int /*<<< orphan*/  uint8_t ;
struct fc_vport {void* port_name; void* node_name; scalar_t__ dd_data; int /*<<< orphan*/  dev; struct Scsi_Host* shost; } ;
struct csio_lnode {struct fc_vport* fc_vport; } ;
struct csio_hw {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FC_VPORT_INITIALIZING ; 
 int /*<<< orphan*/  FUNC1 (struct csio_lnode*) ; 
 scalar_t__ FUNC2 (struct csio_hw*,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_lnode*) ; 
 scalar_t__ FUNC6 (struct csio_hw*,int /*<<< orphan*/ *) ; 
 struct csio_hw* FUNC7 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct csio_lnode*) ; 
 struct csio_lnode* FUNC9 (struct csio_hw*,int /*<<< orphan*/ *,int,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct csio_lnode* FUNC12 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct fc_vport *fc_vport, bool disable)
{
	struct Scsi_Host *shost = fc_vport->shost;
	struct csio_lnode *pln = FUNC12(shost);
	struct csio_lnode *ln = NULL;
	struct csio_hw *hw = FUNC7(pln);
	uint8_t wwn[8];
	int ret = -1;

	ln = FUNC9(hw, &fc_vport->dev, false, pln);
	if (!ln)
		goto error;

	if (fc_vport->node_name != 0) {
		FUNC13(fc_vport->node_name, wwn);

		if (!FUNC0(wwn)) {
			FUNC3(ln,
				    "vport create failed. Invalid wwnn\n");
			goto error;
		}
		FUNC11(FUNC4(ln), wwn, 8);
	}

	if (fc_vport->port_name != 0) {
		FUNC13(fc_vport->port_name, wwn);

		if (!FUNC0(wwn)) {
			FUNC3(ln,
				    "vport create failed. Invalid wwpn\n");
			goto error;
		}

		if (FUNC6(hw, wwn)) {
			FUNC3(ln,
			    "vport create failed. wwpn already exists\n");
			goto error;
		}
		FUNC11(FUNC5(ln), wwn, 8);
	}

	FUNC10(fc_vport, FC_VPORT_INITIALIZING);
	ln->fc_vport = fc_vport;

	if (FUNC2(hw, ln))
		goto error;

	*(struct csio_lnode **)fc_vport->dd_data = ln;
	if (!fc_vport->node_name)
		fc_vport->node_name = FUNC14(FUNC4(ln));
	if (!fc_vport->port_name)
		fc_vport->port_name = FUNC14(FUNC5(ln));
	FUNC1(ln);
	return 0;
error:
	if (ln)
		FUNC8(ln);

	return ret;
}