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
struct venus_comm {int /*<<< orphan*/  vc_mutex; int /*<<< orphan*/  vc_pending; int /*<<< orphan*/  vc_waitq; } ;
struct file {scalar_t__ private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLOUT ; 
 int EPOLLRDNORM ; 
 int EPOLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, poll_table * wait)
{
        struct venus_comm *vcp = (struct venus_comm *) file->private_data;
	__poll_t mask = EPOLLOUT | EPOLLWRNORM;

	FUNC3(file, &vcp->vc_waitq, wait);
	FUNC1(&vcp->vc_mutex);
	if (!FUNC0(&vcp->vc_pending))
                mask |= EPOLLIN | EPOLLRDNORM;
	FUNC2(&vcp->vc_mutex);

	return mask;
}