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
struct afs_net {int /*<<< orphan*/  fs_manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_net*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_net*) ; 
 int /*<<< orphan*/  afs_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct afs_net *net)
{
	FUNC1(net);
	if (!FUNC2(afs_wq, &net->fs_manager))
		FUNC0(net);
}