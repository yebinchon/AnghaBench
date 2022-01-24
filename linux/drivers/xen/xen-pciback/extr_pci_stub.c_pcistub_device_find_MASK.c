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
struct pcistub_device {int dummy; } ;

/* Variables and functions */
 struct pcistub_device* FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcistub_device*) ; 
 int /*<<< orphan*/  pcistub_devices_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct pcistub_device *FUNC4(int domain, int bus,
						  int slot, int func)
{
	struct pcistub_device *psdev;
	unsigned long flags;

	FUNC2(&pcistub_devices_lock, flags);

	psdev = FUNC0(domain, bus, slot, func);
	if (psdev)
		FUNC1(psdev);

	FUNC3(&pcistub_devices_lock, flags);
	return psdev;
}