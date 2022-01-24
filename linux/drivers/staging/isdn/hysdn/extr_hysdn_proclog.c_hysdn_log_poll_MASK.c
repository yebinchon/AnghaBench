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
struct procdata {int /*<<< orphan*/  rd_queue; } ;
struct log_data {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_3__ {struct procdata* proclog; } ;
typedef  TYPE_1__ hysdn_card ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t
FUNC3(struct file *file, poll_table *wait)
{
	__poll_t mask = 0;
	hysdn_card *card = FUNC0(FUNC1(file));
	struct procdata *pd = card->proclog;

	if ((file->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE)
		return (mask);	/* no polling for write supported */

	FUNC2(file, &(pd->rd_queue), wait);

	if (*((struct log_data **) file->private_data))
		mask |= EPOLLIN | EPOLLRDNORM;

	return mask;
}