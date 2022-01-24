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
struct fc_vport {scalar_t__ vport_state; scalar_t__ dd_data; } ;
struct csio_lnode {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FC_VPORT_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int FUNC2 (struct csio_hw*) ; 
 struct Scsi_Host* FUNC3 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_lnode*) ; 
 struct csio_hw* FUNC5 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct fc_vport *fc_vport)
{
	struct csio_lnode *ln = *(struct csio_lnode **)fc_vport->dd_data;
	struct Scsi_Host *shost = FUNC3(ln);
	struct csio_hw *hw = FUNC5(ln);
	int rmv;

	FUNC10(&hw->lock);
	rmv = FUNC2(hw);
	FUNC11(&hw->lock);

	if (rmv) {
		FUNC7(ln);
		return 0;
	}

	/* Quiesce ios and send remove event to lnode */
	FUNC8(shost);
	FUNC10(&hw->lock);
	FUNC6(FUNC1(hw), ln);
	FUNC4(ln);
	FUNC11(&hw->lock);
	FUNC9(shost);

	/* Free vnp */
	if (fc_vport->vport_state !=  FC_VPORT_DISABLED)
		FUNC0(hw, ln);

	FUNC7(ln);
	return 0;
}