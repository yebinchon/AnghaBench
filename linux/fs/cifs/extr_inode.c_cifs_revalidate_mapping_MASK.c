#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CIFS_INO_INVALID_MAPPING ; 
 int /*<<< orphan*/  CIFS_INO_LOCK ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  cifs_wait_bit_killable ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC6 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct inode *inode)
{
	int rc;
	unsigned long *flags = &FUNC0(inode)->flags;

	rc = FUNC6(flags, CIFS_INO_LOCK, cifs_wait_bit_killable,
				     TASK_KILLABLE);
	if (rc)
		return rc;

	if (FUNC5(CIFS_INO_INVALID_MAPPING, flags)) {
		rc = FUNC1(inode);
		if (rc)
			FUNC3(CIFS_INO_INVALID_MAPPING, flags);
	}

	FUNC2(CIFS_INO_LOCK, flags);
	FUNC4();
	FUNC7(flags, CIFS_INO_LOCK);

	return rc;
}