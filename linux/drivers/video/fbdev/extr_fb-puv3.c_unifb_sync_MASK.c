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
struct fb_info {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  UGE_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fb_info *info)
{
	/* TODO: may, this can be replaced by interrupt */
	int cnt;

	for (cnt = 0; cnt < 0x10000000; cnt++) {
		if (FUNC1(UGE_COMMAND) & 0x1000000)
			return;
	}

	if (cnt > 0x8000000)
		FUNC0(info->device, "Warning: UniGFX GE time out ...\n");
}