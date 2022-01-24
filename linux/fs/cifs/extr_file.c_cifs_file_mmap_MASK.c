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
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  cifs_file_vm_ops ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct file*,struct vm_area_struct*) ; 
 int FUNC4 () ; 

int FUNC5(struct file *file, struct vm_area_struct *vma)
{
	int rc, xid;

	xid = FUNC4();

	rc = FUNC1(file);
	if (rc)
		FUNC0(FYI, "Validation prior to mmap failed, error=%d\n",
			 rc);
	if (!rc)
		rc = FUNC3(file, vma);
	if (!rc)
		vma->vm_ops = &cifs_file_vm_ops;

	FUNC2(xid);
	return rc;
}