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
struct venus_comm {int /*<<< orphan*/  vc_mutex; int /*<<< orphan*/ * vc_sb; } ;
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;

/* Variables and functions */
 struct venus_comm* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct super_block *sb)
{
	struct venus_comm *vcp = FUNC0(sb);
	FUNC2(&vcp->vc_mutex);
	vcp->vc_sb = NULL;
	sb->s_fs_info = NULL;
	FUNC3(&vcp->vc_mutex);
	FUNC1(&vcp->vc_mutex);

	FUNC4("Bye bye.\n");
}