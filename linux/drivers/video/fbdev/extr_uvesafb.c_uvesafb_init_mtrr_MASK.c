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
struct uvesafb_par {int mtrr_handle; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct uvesafb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SIZE ; 
 int FUNC0 (int,int) ; 
 scalar_t__ mtrr ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info)
{
	struct uvesafb_par *par = info->par;

	if (mtrr && !(info->fix.smem_start & (PAGE_SIZE - 1))) {
		int temp_size = info->fix.smem_len;

		int rc;

		/* Find the largest power-of-two */
		temp_size = FUNC1(temp_size);

		/* Try and find a power of two to add */
		do {
			rc = FUNC0(info->fix.smem_start, temp_size);
			temp_size >>= 1;
		} while (temp_size >= PAGE_SIZE && rc == -EINVAL);

		if (rc >= 0)
			par->mtrr_handle = rc;
	}
}