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
struct file {struct fb_info* private_data; } ;
struct fb_info {int /*<<< orphan*/  deferred_work; int /*<<< orphan*/  fbdefio; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC6(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct fb_info *info = file->private_data;
	struct inode *inode = FUNC1(file);
	int err = FUNC2(file, start, end);
	if (err)
		return err;

	/* Skip if deferred io is compiled-in but disabled on this fbdev */
	if (!info->fbdefio)
		return 0;

	FUNC3(inode);
	/* Kill off the delayed work */
	FUNC0(&info->deferred_work);

	/* Run it immediately */
	FUNC5(&info->deferred_work, 0);
	FUNC4(inode);

	return 0;
}