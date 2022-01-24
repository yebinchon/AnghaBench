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
struct n_hdlc_buf_list {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct n_hdlc_buf {int /*<<< orphan*/  list_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct n_hdlc_buf_list *buf_list,
			   struct n_hdlc_buf *buf)
{
	unsigned long flags;

	FUNC1(&buf_list->spinlock, flags);

	FUNC0(&buf->list_item, &buf_list->list);
	buf_list->count++;

	FUNC2(&buf_list->spinlock, flags);
}