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
struct s3c2410fb_info {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  smem_start; int /*<<< orphan*/  smem_len; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; struct s3c2410fb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct fb_info *info)
{
	struct s3c2410fb_info *fbi = info->par;

	FUNC1(fbi->dev, FUNC0(info->fix.smem_len),
		    info->screen_base, info->fix.smem_start);
}