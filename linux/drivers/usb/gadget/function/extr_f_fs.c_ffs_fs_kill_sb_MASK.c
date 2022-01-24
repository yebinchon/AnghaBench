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
struct super_block {scalar_t__ s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void
FUNC4(struct super_block *sb)
{
	FUNC0();

	FUNC3(sb);
	if (sb->s_fs_info) {
		FUNC2(sb->s_fs_info);
		FUNC1(sb->s_fs_info);
	}
}