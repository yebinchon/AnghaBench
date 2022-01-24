#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int opcode; int /*<<< orphan*/  uid; int /*<<< orphan*/  pgid; int /*<<< orphan*/  pid; } ;
union inputArgs {TYPE_1__ ih; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  init_user_ns ; 
 union inputArgs* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6(int opcode, int size)
{
	union inputArgs *inp;

	inp = FUNC3(size, GFP_KERNEL);
        if (!inp)
		return FUNC0(-ENOMEM);

        inp->ih.opcode = opcode;
	inp->ih.pid = FUNC5(current, &init_pid_ns);
	inp->ih.pgid = FUNC4(current, &init_pid_ns);
	inp->ih.uid = FUNC2(&init_user_ns, FUNC1());

	return (void*)inp;
}