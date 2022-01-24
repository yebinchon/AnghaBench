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
struct csio_lnode {int dummy; } ;
struct csio_hw {int /*<<< orphan*/  lock; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csio_hw*) ; 
 struct Scsi_Host* FUNC1 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_lnode*) ; 
 struct csio_hw* FUNC3 (struct csio_lnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(struct csio_lnode *ln)
{
	struct Scsi_Host *shost = FUNC1(ln);
	struct csio_hw *hw = FUNC3(ln);

	/* Inform transport */
	FUNC4(shost);

	/* Inform SCSI ML */
	FUNC6(shost);

	/* Flush all the events, so that any rnode removal events
	 * already queued are all handled, before we remove the lnode.
	 */
	FUNC7(&hw->lock);
	FUNC0(hw);
	FUNC8(&hw->lock);

	FUNC2(ln);
	FUNC5(shost);
}