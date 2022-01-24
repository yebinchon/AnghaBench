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
struct scsi_tape {int index; int /*<<< orphan*/  kref; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct scsi_tape* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_tape*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_tape_release ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_index_idr ; 
 int /*<<< orphan*/  st_index_lock ; 
 int /*<<< orphan*/  st_ref_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct scsi_tape *tpnt = FUNC0(dev);
	int index = tpnt->index;

	FUNC6(FUNC9(dev));
	FUNC5(tpnt);

	FUNC3(&st_ref_mutex);
	FUNC2(&tpnt->kref, scsi_tape_release);
	FUNC4(&st_ref_mutex);
	FUNC7(&st_index_lock);
	FUNC1(&st_index_idr, index);
	FUNC8(&st_index_lock);
	return 0;
}