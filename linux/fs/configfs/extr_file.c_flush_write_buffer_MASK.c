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
struct file {int dummy; } ;
struct configfs_fragment {int /*<<< orphan*/  frag_sem; int /*<<< orphan*/  frag_dead; } ;
struct configfs_buffer {int /*<<< orphan*/  page; int /*<<< orphan*/  item; TYPE_1__* attr; } ;
struct TYPE_2__ {int (* store ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct configfs_fragment* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct file *file, struct configfs_buffer *buffer, size_t count)
{
	struct configfs_fragment *frag = FUNC2(file);
	int res = -ENOENT;

	FUNC0(&frag->frag_sem);
	if (!frag->frag_dead)
		res = buffer->attr->store(buffer->item, buffer->page, count);
	FUNC3(&frag->frag_sem);
	return res;
}