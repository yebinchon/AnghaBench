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
struct omap_overlay {int (* is_enabled ) (struct omap_overlay*) ;} ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct omap_overlay*) ; 
 int FUNC2 (struct omap_overlay*) ; 

__attribute__((used)) static ssize_t FUNC3(struct omap_overlay *ovl, char *buf)
{
	return FUNC0(buf, PAGE_SIZE, "%d\n", ovl->is_enabled(ovl));
}