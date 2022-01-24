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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  TELEM_PSS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *unused)
{
	u32 verbosity;
	int err;

	err = FUNC2(TELEM_PSS, &verbosity);
	if (err) {
		FUNC0("Get PSS Trace Verbosity Failed with Error %d\n", err);
		return -EFAULT;
	}

	FUNC1(s, "PSS Trace Verbosity %u\n", verbosity);
	return 0;
}