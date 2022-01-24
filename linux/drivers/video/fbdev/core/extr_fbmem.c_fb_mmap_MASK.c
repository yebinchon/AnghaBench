#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct vm_area_struct {unsigned long vm_pgoff; void* vm_page_prot; int /*<<< orphan*/  vm_flags; } ;
struct file {int dummy; } ;
struct fb_ops {int (* fb_mmap ) (struct fb_info*,struct vm_area_struct*) ;} ;
struct TYPE_4__ {unsigned long smem_start; unsigned long mmio_start; scalar_t__ mmio_len; scalar_t__ smem_len; } ;
struct TYPE_3__ {scalar_t__ accel_flags; } ;
struct fb_info {int /*<<< orphan*/  mm_lock; TYPE_2__ fix; TYPE_1__ var; struct fb_ops* fbops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 unsigned long FUNC0 (scalar_t__) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct vm_area_struct*,unsigned long) ; 
 struct fb_info* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*) ; 
 int FUNC6 (struct fb_info*,struct vm_area_struct*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct vm_area_struct*,unsigned long,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(struct file *file, struct vm_area_struct * vma)
{
	struct fb_info *info = FUNC2(file);
	struct fb_ops *fb;
	unsigned long mmio_pgoff;
	unsigned long start;
	u32 len;

	if (!info)
		return -ENODEV;
	fb = info->fbops;
	FUNC3(&info->mm_lock);
	if (fb->fb_mmap) {
		int res;

		/*
		 * The framebuffer needs to be accessed decrypted, be sure
		 * SME protection is removed ahead of the call
		 */
		vma->vm_page_prot = FUNC5(vma->vm_page_prot);
		res = fb->fb_mmap(info, vma);
		FUNC4(&info->mm_lock);
		return res;
	}

	/*
	 * Ugh. This can be either the frame buffer mapping, or
	 * if pgoff points past it, the mmio mapping.
	 */
	start = info->fix.smem_start;
	len = info->fix.smem_len;
	mmio_pgoff = FUNC0((start & ~PAGE_MASK) + len) >> PAGE_SHIFT;
	if (vma->vm_pgoff >= mmio_pgoff) {
		if (info->var.accel_flags) {
			FUNC4(&info->mm_lock);
			return -EINVAL;
		}

		vma->vm_pgoff -= mmio_pgoff;
		start = info->fix.mmio_start;
		len = info->fix.mmio_len;
	}
	FUNC4(&info->mm_lock);

	vma->vm_page_prot = FUNC7(vma->vm_flags);
	/*
	 * The framebuffer needs to be accessed decrypted, be sure
	 * SME protection is removed
	 */
	vma->vm_page_prot = FUNC5(vma->vm_page_prot);
	FUNC1(file, vma, start);

	return FUNC8(vma, start, len);
}