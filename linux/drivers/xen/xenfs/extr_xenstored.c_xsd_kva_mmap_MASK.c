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
struct vm_area_struct {size_t vm_end; size_t vm_start; scalar_t__ vm_pgoff; int /*<<< orphan*/  vm_page_prot; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,size_t,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_store_interface ; 

__attribute__((used)) static int FUNC2(struct file *file, struct vm_area_struct *vma)
{
	size_t size = vma->vm_end - vma->vm_start;

	if ((size > PAGE_SIZE) || (vma->vm_pgoff != 0))
		return -EINVAL;

	if (FUNC0(vma, vma->vm_start,
			    FUNC1(xen_store_interface),
			    size, vma->vm_page_prot))
		return -EAGAIN;

	return 0;
}