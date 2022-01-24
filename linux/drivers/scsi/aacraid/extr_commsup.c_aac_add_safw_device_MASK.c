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
struct aac_dev {int /*<<< orphan*/  scsi_host_ptr; } ;

/* Variables and functions */
 int CONTAINER_CHANNEL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct aac_dev *dev, int bus, int target)
{
	if (bus != CONTAINER_CHANNEL)
		bus = FUNC0(bus);

	return FUNC1(dev->scsi_host_ptr, bus, target, 0);
}