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
typedef  int /*<<< orphan*/  u16 ;
struct fb_cmap {int len; scalar_t__ start; int /*<<< orphan*/ * transp; void* blue; void* green; void* red; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  __GFP_NOWARN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct fb_cmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_cmap*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct fb_cmap *cmap, int len, int transp, gfp_t flags)
{
	int size = len * sizeof(u16);
	int ret = -ENOMEM;

	flags |= __GFP_NOWARN;

	if (cmap->len != len) {
		FUNC1(cmap);
		if (!len)
			return 0;

		cmap->red = FUNC3(size, flags);
		if (!cmap->red)
			goto fail;
		cmap->green = FUNC3(size, flags);
		if (!cmap->green)
			goto fail;
		cmap->blue = FUNC3(size, flags);
		if (!cmap->blue)
			goto fail;
		if (transp) {
			cmap->transp = FUNC3(size, flags);
			if (!cmap->transp)
				goto fail;
		} else {
			cmap->transp = NULL;
		}
	}
	cmap->start = 0;
	cmap->len = len;
	ret = FUNC0(FUNC2(len), cmap);
	if (ret)
		goto fail;
	return 0;

fail:
	FUNC1(cmap);
	return ret;
}