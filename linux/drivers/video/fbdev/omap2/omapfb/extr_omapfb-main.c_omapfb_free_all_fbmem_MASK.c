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
struct omapfb2_device {int num_fbs; struct fb_info** fbs; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 

__attribute__((used)) static int FUNC3(struct omapfb2_device *fbdev)
{
	int i;

	FUNC0("free all fbmem\n");

	for (i = 0; i < fbdev->num_fbs; i++) {
		struct fb_info *fbi = fbdev->fbs[i];
		FUNC2(fbi);
		FUNC1(fbi);
	}

	return 0;
}