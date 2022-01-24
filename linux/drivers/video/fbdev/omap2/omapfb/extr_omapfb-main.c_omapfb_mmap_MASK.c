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
typedef  int /*<<< orphan*/  u32 ;
struct vm_area_struct {int vm_pgoff; struct omapfb2_mem_region* vm_private_data; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; } ;
struct omapfb_info {struct omapfb2_mem_region* region; } ;
struct omapfb2_mem_region {int /*<<< orphan*/  map_count; } ;
struct fb_fix_screeninfo {int /*<<< orphan*/  smem_len; } ;
struct fb_info {struct fb_fix_screeninfo fix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,int /*<<< orphan*/ ,int) ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmap_user_ops ; 
 struct omapfb2_mem_region* FUNC3 (struct omapfb2_mem_region*) ; 
 unsigned long FUNC4 (struct omapfb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct omapfb2_mem_region*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct fb_info *fbi, struct vm_area_struct *vma)
{
	struct omapfb_info *ofbi = FUNC1(fbi);
	struct fb_fix_screeninfo *fix = &fbi->fix;
	struct omapfb2_mem_region *rg;
	unsigned long start;
	u32 len;
	int r;

	rg = FUNC3(ofbi->region);

	start = FUNC4(ofbi);
	len = fix->smem_len;

	FUNC0("user mmap region start %lx, len %d, off %lx\n", start, len,
			vma->vm_pgoff << PAGE_SHIFT);

	vma->vm_page_prot = FUNC6(vma->vm_page_prot);
	vma->vm_ops = &mmap_user_ops;
	vma->vm_private_data = rg;

	r = FUNC7(vma, start, len);
	if (r)
		goto error;

	/* vm_ops.open won't be called for mmap itself. */
	FUNC2(&rg->map_count);

	FUNC5(rg);

	return 0;

error:
	FUNC5(ofbi->region);

	return r;
}