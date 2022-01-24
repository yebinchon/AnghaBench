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
struct inode {int dummy; } ;
struct file {struct configfs_buffer* private_data; } ;
struct configfs_buffer {int /*<<< orphan*/  mutex; scalar_t__ page; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct configfs_buffer *buffer = filp->private_data;

	FUNC2(buffer->owner);
	if (buffer->page)
		FUNC0((unsigned long)buffer->page);
	FUNC3(&buffer->mutex);
	FUNC1(buffer);
	return 0;
}