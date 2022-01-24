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
struct scsi_tape {int /*<<< orphan*/  kref; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct scsi_tape* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_tape_release ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_index_idr ; 
 int /*<<< orphan*/  st_index_lock ; 
 int /*<<< orphan*/  st_ref_mutex ; 

__attribute__((used)) static struct scsi_tape *FUNC8(int dev)
{
	struct scsi_tape *STp = NULL;

	FUNC3(&st_ref_mutex);
	FUNC6(&st_index_lock);

	STp = FUNC0(&st_index_idr, dev);
	if (!STp) goto out;

	FUNC1(&STp->kref);

	if (!STp->device)
		goto out_put;

	if (FUNC5(STp->device))
		goto out_put;

	goto out;

out_put:
	FUNC2(&STp->kref, scsi_tape_release);
	STp = NULL;
out:
	FUNC7(&st_index_lock);
	FUNC4(&st_ref_mutex);
	return STp;
}