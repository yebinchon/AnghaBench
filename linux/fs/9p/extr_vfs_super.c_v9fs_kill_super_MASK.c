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
struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct v9fs_session_info*) ; 

__attribute__((used)) static void FUNC5(struct super_block *s)
{
	struct v9fs_session_info *v9ses = s->s_fs_info;

	FUNC2(P9_DEBUG_VFS, " %p\n", s);

	FUNC1(s);

	FUNC3(v9ses);
	FUNC4(v9ses);
	FUNC0(v9ses);
	s->s_fs_info = NULL;
	FUNC2(P9_DEBUG_VFS, "exiting kill_super\n");
}