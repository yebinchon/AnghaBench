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
struct rt2x00debug_intf {int /*<<< orphan*/  frame_dump_skbqueue; int /*<<< orphan*/  frame_dump_waitqueue; } ;
struct file {struct rt2x00debug_intf* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLOUT ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC2(struct file *file,
						poll_table *wait)
{
	struct rt2x00debug_intf *intf = file->private_data;

	FUNC0(file, &intf->frame_dump_waitqueue, wait);

	if (!FUNC1(&intf->frame_dump_skbqueue))
		return EPOLLOUT | EPOLLWRNORM;

	return 0;
}