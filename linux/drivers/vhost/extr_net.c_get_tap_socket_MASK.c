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
struct socket {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 struct socket* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 struct file* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct socket* FUNC4 (struct file*) ; 
 struct socket* FUNC5 (struct file*) ; 

__attribute__((used)) static struct socket *FUNC6(int fd)
{
	struct file *file = FUNC2(fd);
	struct socket *sock;

	if (!file)
		return FUNC0(-EBADF);
	sock = FUNC5(file);
	if (!FUNC1(sock))
		return sock;
	sock = FUNC4(file);
	if (FUNC1(sock))
		FUNC3(file);
	return sock;
}