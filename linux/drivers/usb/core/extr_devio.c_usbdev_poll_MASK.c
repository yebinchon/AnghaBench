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
struct usb_dev_state {int /*<<< orphan*/  list; int /*<<< orphan*/  async_completed; int /*<<< orphan*/  wait; } ;
struct poll_table_struct {int dummy; } ;
struct file {int f_mode; struct usb_dev_state* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLOUT ; 
 int EPOLLWRNORM ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct usb_dev_state*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file,
				struct poll_table_struct *wait)
{
	struct usb_dev_state *ps = file->private_data;
	__poll_t mask = 0;

	FUNC2(file, &ps->wait, wait);
	if (file->f_mode & FMODE_WRITE && !FUNC1(&ps->async_completed))
		mask |= EPOLLOUT | EPOLLWRNORM;
	if (!FUNC0(ps))
		mask |= EPOLLHUP;
	if (FUNC1(&ps->list))
		mask |= EPOLLERR;
	return mask;
}