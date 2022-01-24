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
struct vme_dev {int num; } ;

/* Variables and functions */
 int* bus ; 
 int bus_num ; 
 int FUNC0 (struct vme_dev*) ; 
 int FUNC1 (struct vme_dev*) ; 

__attribute__((used)) static int FUNC2(struct vme_dev *vdev)
{
	int i;

	int cur_bus = FUNC0(vdev);
	int cur_slot = FUNC1(vdev);

	for (i = 0; i < bus_num; i++)
		if ((cur_bus == bus[i]) && (cur_slot == vdev->num))
			return 1;

	return 0;
}