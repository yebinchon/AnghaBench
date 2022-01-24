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
struct file {scalar_t__ f_cred; } ;
struct TYPE_3__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int EACCES ; 
 int EPERM ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct file *filp, const char *caller)
{
	if (filp->f_cred != FUNC0()) {
		FUNC1("%s: process %d (%s) changed security contexts after opening file descriptor, this is not allowed.\n",
			caller, FUNC2(current), current->comm);
		return -EPERM;
	}
	if (FUNC3()) {
		FUNC1("%s: process %d (%s) called from kernel context, this is not allowed.\n",
			caller, FUNC2(current), current->comm);
		return -EACCES;
	}
	return 0;
}