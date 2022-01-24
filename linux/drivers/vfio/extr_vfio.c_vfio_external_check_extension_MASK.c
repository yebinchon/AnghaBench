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
struct vfio_group {int /*<<< orphan*/  container; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 

long FUNC1(struct vfio_group *group, unsigned long arg)
{
	return FUNC0(group->container, arg);
}