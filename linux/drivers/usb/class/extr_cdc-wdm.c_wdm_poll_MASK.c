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
struct wdm_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  flags; scalar_t__ werr; scalar_t__ rerr; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct wdm_device* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLHUP ; 
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  WDM_DISCONNECTING ; 
 int /*<<< orphan*/  WDM_IN_USE ; 
 int /*<<< orphan*/  WDM_READ ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, struct poll_table_struct *wait)
{
	struct wdm_device *desc = file->private_data;
	unsigned long flags;
	__poll_t mask = 0;

	FUNC1(&desc->iuspin, flags);
	if (FUNC3(WDM_DISCONNECTING, &desc->flags)) {
		mask = EPOLLHUP | EPOLLERR;
		FUNC2(&desc->iuspin, flags);
		goto desc_out;
	}
	if (FUNC3(WDM_READ, &desc->flags))
		mask = EPOLLIN | EPOLLRDNORM;
	if (desc->rerr || desc->werr)
		mask |= EPOLLERR;
	if (!FUNC3(WDM_IN_USE, &desc->flags))
		mask |= EPOLLOUT | EPOLLWRNORM;
	FUNC2(&desc->iuspin, flags);

	FUNC0(file, &desc->wait, wait);

desc_out:
	return mask;
}