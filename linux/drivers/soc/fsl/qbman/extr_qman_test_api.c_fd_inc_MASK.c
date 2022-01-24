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
typedef  int u64 ;
struct qm_fd {int /*<<< orphan*/  cmd; } ;
typedef  enum qm_fd_format { ____Placeholder_qm_fd_format } qm_fd_format ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct qm_fd*) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_fd*,int) ; 
 int FUNC4 (struct qm_fd*) ; 
 unsigned int FUNC5 (struct qm_fd*) ; 
 unsigned int FUNC6 (struct qm_fd*) ; 
 int /*<<< orphan*/  FUNC7 (struct qm_fd*,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct qm_fd *fd)
{
	u64 t = FUNC2(fd);
	int z = t >> 40;
	unsigned int len, off;
	enum qm_fd_format fmt;

	t <<= 1;
	if (z)
		t |= 1;
	FUNC3(fd, t);

	fmt = FUNC4(fd);
	off = FUNC6(fd);
	len = FUNC5(fd);
	len--;
	FUNC7(fd, fmt, off, len);

	fd->cmd = FUNC1(FUNC0(fd->cmd) + 1);
}