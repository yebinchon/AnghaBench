#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ scsi_changer ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  ch_index_idr ; 
 int /*<<< orphan*/  ch_index_lock ; 
 int /*<<< orphan*/  ch_mutex ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct file *file)
{
	scsi_changer *ch;
	int minor = FUNC1(inode);

	FUNC3(&ch_mutex);
	FUNC6(&ch_index_lock);
	ch = FUNC0(&ch_index_idr, minor);

	if (NULL == ch || FUNC5(ch->device)) {
		FUNC7(&ch_index_lock);
		FUNC4(&ch_mutex);
		return -ENXIO;
	}
	FUNC2(&ch->ref);
	FUNC7(&ch_index_lock);

	file->private_data = ch;
	FUNC4(&ch_mutex);
	return 0;
}