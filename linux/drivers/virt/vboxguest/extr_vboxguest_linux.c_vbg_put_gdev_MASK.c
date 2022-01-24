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
struct vbg_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vbg_dev* vbg_gdev ; 
 int /*<<< orphan*/  vbg_gdev_mutex ; 

void FUNC2(struct vbg_dev *gdev)
{
	FUNC0(gdev != vbg_gdev);
	FUNC1(&vbg_gdev_mutex);
}