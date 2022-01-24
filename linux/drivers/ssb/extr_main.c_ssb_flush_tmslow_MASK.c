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
struct ssb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_TMSLOW ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ssb_device *dev)
{
	/* Make _really_ sure the device has finished the TMSLOW
	 * register write transaction, as we risk running into
	 * a machine check exception otherwise.
	 * Do this by reading the register back to commit the
	 * PCI write and delay an additional usec for the device
	 * to react to the change. */
	FUNC0(dev, SSB_TMSLOW);
	FUNC1(1);
}