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
struct scsi_tape {scalar_t__ door_locked; int /*<<< orphan*/  device; scalar_t__ in_use; int /*<<< orphan*/  buffer; } ;
struct inode {int dummy; } ;
struct file {struct scsi_tape* private_data; } ;

/* Variables and functions */
 scalar_t__ ST_LOCKED_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_tape*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_tape*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_use_lock ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	int result = 0;
	struct scsi_tape *STp = filp->private_data;

	if (STp->door_locked == ST_LOCKED_AUTO)
		FUNC0(STp, 0);

	FUNC1(STp->buffer);
	FUNC4(&st_use_lock);
	STp->in_use = 0;
	FUNC5(&st_use_lock);
	FUNC2(STp->device);
	FUNC3(STp);

	return result;
}