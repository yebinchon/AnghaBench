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
struct platform_device {int dummy; } ;
struct mbxfb_info {TYPE_1__* fb_req; TYPE_1__* reg_req; int /*<<< orphan*/  (* platform_remove ) (struct fb_info*) ;} ;
struct fb_info {struct mbxfb_info* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSRST ; 
 int /*<<< orphan*/  SYSRST_RST ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 struct fb_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dev)
{
	struct fb_info *fbi = FUNC2(dev);

	FUNC7(SYSRST_RST, SYSRST);

	FUNC1(fbi);

	if (fbi) {
		struct mbxfb_info *mfbi = fbi->par;

		FUNC6(fbi);
		if (mfbi) {
			if (mfbi->platform_remove)
				mfbi->platform_remove(fbi);


			if (mfbi->reg_req)
				FUNC3(mfbi->reg_req->start,
						   FUNC4(mfbi->reg_req));
			if (mfbi->fb_req)
				FUNC3(mfbi->fb_req->start,
						   FUNC4(mfbi->fb_req));
		}
		FUNC0(fbi);
	}

	return 0;
}