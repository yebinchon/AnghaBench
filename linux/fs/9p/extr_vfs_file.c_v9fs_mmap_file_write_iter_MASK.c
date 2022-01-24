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
struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kiocb*,struct iov_iter*) ; 

__attribute__((used)) static ssize_t
FUNC1(struct kiocb *iocb, struct iov_iter *from)
{
	/*
	 * TODO: invalidate mmaps on filp's inode between
	 * offset and offset+count
	 */
	return FUNC0(iocb, from);
}