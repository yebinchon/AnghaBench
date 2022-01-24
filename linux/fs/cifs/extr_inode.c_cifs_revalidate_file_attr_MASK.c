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
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct cifsFileInfo {int /*<<< orphan*/  tlink; } ;
struct TYPE_2__ {scalar_t__ unix_ext; } ;

/* Variables and functions */
 int FUNC0 (struct file*) ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct file*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct file *filp)
{
	int rc = 0;
	struct inode *inode = FUNC3(filp);
	struct cifsFileInfo *cfile = (struct cifsFileInfo *) filp->private_data;

	if (!FUNC2(inode))
		return rc;

	if (FUNC4(cfile->tlink)->unix_ext)
		rc = FUNC1(filp);
	else
		rc = FUNC0(filp);

	return rc;
}