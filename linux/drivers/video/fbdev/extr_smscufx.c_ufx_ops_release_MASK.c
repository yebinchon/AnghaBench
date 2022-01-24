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
struct ufx_data {scalar_t__ fb_count; int /*<<< orphan*/  kref; int /*<<< orphan*/  free_framebuffer_work; scalar_t__ virtualized; } ;
struct fb_info {int /*<<< orphan*/  node; TYPE_1__* fbops; int /*<<< orphan*/ * fbdefio; struct ufx_data* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_mmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ufx_free ; 
 int /*<<< orphan*/  ufx_ops_mmap ; 

__attribute__((used)) static int FUNC5(struct fb_info *info, int user)
{
	struct ufx_data *dev = info->par;

	dev->fb_count--;

	/* We can't free fb_info here - fbmem will touch it when we return */
	if (dev->virtualized && (dev->fb_count == 0))
		FUNC4(&dev->free_framebuffer_work, HZ);

	if ((dev->fb_count == 0) && (info->fbdefio)) {
		FUNC0(info);
		FUNC1(info->fbdefio);
		info->fbdefio = NULL;
		info->fbops->fb_mmap = ufx_ops_mmap;
	}

	FUNC3("released /dev/fb%d user=%d count=%d",
		  info->node, user, dev->fb_count);

	FUNC2(&dev->kref, ufx_free);

	return 0;
}