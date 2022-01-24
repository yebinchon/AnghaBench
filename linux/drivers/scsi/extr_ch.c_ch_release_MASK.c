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
struct file {TYPE_1__* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ scsi_changer ;

/* Variables and functions */
 int /*<<< orphan*/  ch_destroy ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, struct file *file)
{
	scsi_changer *ch = file->private_data;

	FUNC1(ch->device);
	file->private_data = NULL;
	FUNC0(&ch->ref, ch_destroy);
	return 0;
}