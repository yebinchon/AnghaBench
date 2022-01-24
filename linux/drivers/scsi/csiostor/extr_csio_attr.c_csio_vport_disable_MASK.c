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
struct fc_vport {scalar_t__ dd_data; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_DISABLED ; 
 int /*<<< orphan*/  FC_VPORT_INITIALIZING ; 
 scalar_t__ FUNC0 (struct csio_hw*,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_lnode*,char*) ; 
 struct Scsi_Host* FUNC4 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_lnode*) ; 
 struct csio_hw* FUNC6 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct fc_vport *fc_vport, bool disable)
{
	struct csio_lnode *ln = *(struct csio_lnode **)fc_vport->dd_data;
	struct Scsi_Host *shost = FUNC4(ln);
	struct csio_hw *hw = FUNC6(ln);

	/* disable vport */
	if (disable) {
		/* Quiesce ios and send stop event to lnode */
		FUNC9(shost);
		FUNC11(&hw->lock);
		FUNC7(FUNC2(hw), ln);
		FUNC5(ln);
		FUNC12(&hw->lock);
		FUNC10(shost);

		/* Free vnp */
		FUNC1(hw, ln);
		FUNC8(fc_vport, FC_VPORT_DISABLED);
		FUNC3(ln, "vport disabled\n");
		return 0;
	} else {
		/* enable vport */
		FUNC8(fc_vport, FC_VPORT_INITIALIZING);
		if (FUNC0(hw, ln)) {
			FUNC3(ln, "vport enabled failed.\n");
			return -1;
		}
		FUNC3(ln, "vport enabled\n");
		return 0;
	}
}