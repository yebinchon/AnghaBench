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
struct i810fb_par {int dev_flags; } ;
struct fb_info {struct i810fb_par* par; } ;

/* Variables and functions */
 int ALWAYS_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(struct fb_info *info, u32 space)
{
	struct i810fb_par *par = info->par;

	if (par->dev_flags & ALWAYS_SYNC) 
		FUNC0(info);
	return FUNC1(info, space);
}