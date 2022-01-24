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
struct omapfb_memory_read {int buffer_size; int w; int h; int /*<<< orphan*/  buffer; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int (* memory_read ) (struct omap_dss_device*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 struct omap_dss_device* FUNC3 (struct fb_info*) ; 
 int FUNC4 (struct omap_dss_device*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct fb_info *fbi,
		struct omapfb_memory_read *mr)
{
	struct omap_dss_device *display = FUNC3(fbi);
	void *buf;
	int r;

	if (!display || !display->driver->memory_read)
		return -ENOENT;

	if (!FUNC1(mr->buffer, mr->buffer_size))
		return -EFAULT;

	if (mr->w > 4096 || mr->h > 4096)
		return -EINVAL;

	if (mr->w * mr->h * 3 > mr->buffer_size)
		return -EINVAL;

	buf = FUNC6(mr->buffer_size);
	if (!buf) {
		FUNC0("vmalloc failed\n");
		return -ENOMEM;
	}

	r = display->driver->memory_read(display, buf, mr->buffer_size,
			mr->x, mr->y, mr->w, mr->h);

	if (r > 0) {
		if (FUNC2(mr->buffer, buf, r))
			r = -EFAULT;
	}

	FUNC5(buf);

	return r;
}