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
struct TYPE_2__ {int device; int vendor; } ;
struct virtio_device {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct virtio_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *_d,
			     struct device_attribute *attr, char *buf)
{
	struct virtio_device *dev = FUNC0(_d);
	return FUNC1(buf, "virtio:d%08Xv%08X\n",
		       dev->id.device, dev->id.vendor);
}