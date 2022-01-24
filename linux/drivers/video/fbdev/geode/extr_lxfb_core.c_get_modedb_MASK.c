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
struct fb_videomode {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ geode_modedb ; 
 scalar_t__ olpc_dcon_modedb ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct fb_videomode **modedb, unsigned int *size)
{
	if (FUNC1()) {
		*modedb = (struct fb_videomode *) olpc_dcon_modedb;
		*size = FUNC0(olpc_dcon_modedb);
	} else {
		*modedb = (struct fb_videomode *) geode_modedb;
		*size = FUNC0(geode_modedb);
	}
}