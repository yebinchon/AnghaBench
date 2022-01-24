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
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vio_dev* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct vio_dev*) ; 

__attribute__((used)) static int FUNC3(char *drc_name, struct device_node *dn)
{
	struct vio_dev *vio_dev;

	vio_dev = FUNC1(dn);
	if (!vio_dev)
		return -EINVAL;

	FUNC2(vio_dev);

	FUNC0(&vio_dev->dev);

	return 0;
}