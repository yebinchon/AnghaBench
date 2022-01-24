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
struct fb_info {struct cirrusfb_info* par; } ;
struct cirrusfb_info {int /*<<< orphan*/  regbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CL_GR31 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct cirrusfb_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info)
{
	struct cirrusfb_info *cinfo = info->par;

	if (!FUNC1(cinfo)) {
		while (FUNC2(cinfo->regbase, CL_GR31) & 0x03)
			FUNC0();
	}
	return 0;
}