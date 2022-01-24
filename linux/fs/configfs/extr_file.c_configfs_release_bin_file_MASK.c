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
struct file {struct configfs_buffer* private_data; } ;
struct configfs_fragment {int /*<<< orphan*/  frag_sem; int /*<<< orphan*/  frag_dead; } ;
struct configfs_buffer {int read_in_progress; int write_in_progress; int needs_read_fill; scalar_t__ bin_buffer_size; int /*<<< orphan*/ * bin_buffer; int /*<<< orphan*/  item; TYPE_1__* bin_attr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct configfs_fragment* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct configfs_buffer *buffer = file->private_data;

	buffer->read_in_progress = false;

	if (buffer->write_in_progress) {
		struct configfs_fragment *frag = FUNC3(file);
		buffer->write_in_progress = false;

		FUNC1(&frag->frag_sem);
		if (!frag->frag_dead) {
			/* result of ->release() is ignored */
			buffer->bin_attr->write(buffer->item,
					buffer->bin_buffer,
					buffer->bin_buffer_size);
		}
		FUNC4(&frag->frag_sem);
		/* vfree on NULL is safe */
		FUNC5(buffer->bin_buffer);
		buffer->bin_buffer = NULL;
		buffer->bin_buffer_size = 0;
		buffer->needs_read_fill = 1;
	}

	FUNC0(inode, file);
	return 0;
}