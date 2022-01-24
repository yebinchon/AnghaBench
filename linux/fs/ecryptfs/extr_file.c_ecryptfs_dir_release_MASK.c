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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ecryptfs_file_info_cache ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	FUNC2(FUNC0(file));
	FUNC3(ecryptfs_file_info_cache,
			FUNC1(file));
	return 0;
}