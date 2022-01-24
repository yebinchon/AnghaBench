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
struct vm_area_struct {int /*<<< orphan*/ * vm_ops; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  cifs_file_vm_ops ; 
 int FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct file*,struct vm_area_struct*) ; 
 int FUNC6 () ; 

int FUNC7(struct file *file, struct vm_area_struct *vma)
{
	int xid, rc = 0;
	struct inode *inode = FUNC3(file);

	xid = FUNC6();

	if (!FUNC0(FUNC1(inode)))
		rc = FUNC2(inode);
	if (!rc)
		rc = FUNC5(file, vma);
	if (!rc)
		vma->vm_ops = &cifs_file_vm_ops;

	FUNC4(xid);
	return rc;
}