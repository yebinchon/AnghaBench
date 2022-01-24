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
struct super_block {int dummy; } ;
struct pts_fs_info {int /*<<< orphan*/  allocated_ptys; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pts_fs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct pts_fs_info *fsi = FUNC0(sb);

	if (fsi)
		FUNC1(&fsi->allocated_ptys);
	FUNC2(fsi);
	FUNC3(sb);
}