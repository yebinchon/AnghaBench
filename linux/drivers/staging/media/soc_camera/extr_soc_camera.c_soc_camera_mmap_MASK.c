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
struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct soc_camera_host {int /*<<< orphan*/  host_lock; } ;
struct soc_camera_device {int /*<<< orphan*/  pdev; int /*<<< orphan*/  vb2_vidq; struct file* streamer; int /*<<< orphan*/  parent; } ;
struct file {struct soc_camera_device* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct soc_camera_host* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct vm_area_struct *vma)
{
	struct soc_camera_device *icd = file->private_data;
	struct soc_camera_host *ici = FUNC3(icd->parent);
	int err;

	FUNC0(icd->pdev, "mmap called, vma=%p\n", vma);

	if (icd->streamer != file)
		return -EBUSY;

	if (FUNC1(&ici->host_lock))
		return -ERESTARTSYS;
	err = FUNC4(&icd->vb2_vidq, vma);
	FUNC2(&ici->host_lock);

	FUNC0(icd->pdev, "vma start=0x%08lx, size=%ld, ret=%d\n",
		(unsigned long)vma->vm_start,
		(unsigned long)vma->vm_end - (unsigned long)vma->vm_start,
		err);

	return err;
}