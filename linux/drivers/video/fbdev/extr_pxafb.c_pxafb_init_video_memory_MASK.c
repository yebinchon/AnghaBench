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
struct TYPE_3__ {int smem_len; int /*<<< orphan*/  smem_start; } ;
struct TYPE_4__ {int /*<<< orphan*/ * screen_base; TYPE_1__ fix; } ;
struct pxafb_info {int video_mem_size; int /*<<< orphan*/ * video_mem; TYPE_2__ fb; int /*<<< orphan*/  video_mem_phys; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int FUNC0 (int) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pxafb_info *fbi)
{
	int size = FUNC0(fbi->video_mem_size);

	fbi->video_mem = FUNC1(size, GFP_KERNEL | __GFP_ZERO);
	if (fbi->video_mem == NULL)
		return -ENOMEM;

	fbi->video_mem_phys = FUNC2(fbi->video_mem);
	fbi->video_mem_size = size;

	fbi->fb.fix.smem_start	= fbi->video_mem_phys;
	fbi->fb.fix.smem_len	= fbi->video_mem_size;
	fbi->fb.screen_base	= fbi->video_mem;

	return fbi->video_mem ? 0 : -ENOMEM;
}