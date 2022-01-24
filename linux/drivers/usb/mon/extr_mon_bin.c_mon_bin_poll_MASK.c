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
struct poll_table_struct {int dummy; } ;
struct mon_reader_bin {int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_wait; } ;
struct file {int f_mode; struct mon_reader_bin* private_data; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (struct mon_reader_bin*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static __poll_t
FUNC4(struct file *file, struct poll_table_struct *wait)
{
	struct mon_reader_bin *rp = file->private_data;
	__poll_t mask = 0;
	unsigned long flags;

	if (file->f_mode & FMODE_READ)
		FUNC1(file, &rp->b_wait, wait);

	FUNC2(&rp->b_lock, flags);
	if (!FUNC0(rp))
		mask |= EPOLLIN | EPOLLRDNORM;    /* readable */
	FUNC3(&rp->b_lock, flags);
	return mask;
}