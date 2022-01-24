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
struct omapfb_info {int /*<<< orphan*/  region; int /*<<< orphan*/  id; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 int FUNC2 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct fb_info *fbi)
{
	struct omapfb_info *ofbi = FUNC1(fbi);
	int r;

	FUNC0("set_par(%d)\n", FUNC1(fbi)->id);

	FUNC3(ofbi->region);

	FUNC5(fbi);

	r = FUNC6(fbi);
	if (r)
		goto out;

	r = FUNC2(fbi, 0);

 out:
	FUNC4(ofbi->region);

	return r;
}