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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct fsg_lun {struct file* filp; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_lun*,char*,unsigned long) ; 
 struct inode* FUNC1 (struct file*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct fsg_lun *curlun)
{
	struct file	*filp = curlun->filp;
	struct inode	*inode = FUNC1(filp);
	unsigned long	rc;

	rc = FUNC2(inode->i_mapping, 0, -1);
	FUNC0(curlun, "invalidate_mapping_pages -> %ld\n", rc);
}