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
struct fb_info {int /*<<< orphan*/  cmap; TYPE_2__* apertures; scalar_t__ screen_base; } ;
struct TYPE_4__ {TYPE_1__* ranges; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int EFI_MEMORY_UC ; 
 int EFI_MEMORY_WC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int mem_flags ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ request_mem_succeeded ; 

__attribute__((used)) static void FUNC4(struct fb_info *info)
{
	if (info->screen_base) {
		if (mem_flags & (EFI_MEMORY_UC | EFI_MEMORY_WC))
			FUNC1(info->screen_base);
		else
			FUNC2(info->screen_base);
	}
	if (request_mem_succeeded)
		FUNC3(info->apertures->ranges[0].base,
				   info->apertures->ranges[0].size);
	FUNC0(&info->cmap);
}