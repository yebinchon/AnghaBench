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
struct fb_info {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct inode*) ; 
 struct fb_info** registered_fb ; 

__attribute__((used)) static struct fb_info *FUNC2(struct file *file)
{
	struct inode *inode = FUNC0(file);
	int fbidx = FUNC1(inode);
	struct fb_info *info = registered_fb[fbidx];

	if (info != file->private_data)
		info = NULL;
	return info;
}