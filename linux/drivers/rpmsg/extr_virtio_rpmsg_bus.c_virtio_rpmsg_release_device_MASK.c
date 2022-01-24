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
struct virtio_rpmsg_channel {int dummy; } ;
struct rpmsg_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct virtio_rpmsg_channel*) ; 
 struct rpmsg_device* FUNC1 (struct device*) ; 
 struct virtio_rpmsg_channel* FUNC2 (struct rpmsg_device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct rpmsg_device *rpdev = FUNC1(dev);
	struct virtio_rpmsg_channel *vch = FUNC2(rpdev);

	FUNC0(vch);
}