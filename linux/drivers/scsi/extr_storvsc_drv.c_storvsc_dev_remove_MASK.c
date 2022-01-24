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
struct storvsc_device {int destroy; struct storvsc_device* stor_chns; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 struct storvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hv_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct storvsc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct storvsc_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct hv_device *device)
{
	struct storvsc_device *stor_device;

	stor_device = FUNC0(device);

	stor_device->destroy = true;

	/* Make sure flag is set before waiting */
	FUNC5();

	/*
	 * At this point, all outbound traffic should be disable. We
	 * only allow inbound traffic (responses) to proceed so that
	 * outstanding requests can be completed.
	 */

	FUNC3(stor_device);

	/*
	 * Since we have already drained, we don't need to busy wait
	 * as was done in final_release_stor_device()
	 * Note that we cannot set the ext pointer to NULL until
	 * we have drained - to drain the outgoing packets, we need to
	 * allow incoming packets.
	 */
	FUNC1(device, NULL);

	/* Close the channel */
	FUNC4(device->channel);

	FUNC2(stor_device->stor_chns);
	FUNC2(stor_device);
	return 0;
}