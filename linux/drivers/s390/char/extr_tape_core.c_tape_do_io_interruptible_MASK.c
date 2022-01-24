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
struct tape_request {int rc; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * callback_data; } ;
struct tape_device {int /*<<< orphan*/  cdev_id; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int FUNC1 (struct tape_device*,struct tape_request*) ; 
 int FUNC2 (struct tape_device*,struct tape_request*) ; 
 int /*<<< orphan*/ * __tape_wake_up_interruptible ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct tape_device *device,
			 struct tape_request *request)
{
	int rc;

	FUNC4(FUNC3(device->cdev));
	/* Setup callback */
	request->callback = __tape_wake_up_interruptible;
	request->callback_data = &device->wait_queue;
	rc = FUNC2(device, request);
	FUNC5(FUNC3(device->cdev));
	if (rc)
		return rc;
	/* Request added to the queue. Wait for its completion. */
	rc = FUNC6(device->wait_queue,
				      (request->callback == NULL));
	if (rc != -ERESTARTSYS)
		/* Request finished normally. */
		return request->rc;

	/* Interrupted by a signal. We have to stop the current request. */
	FUNC4(FUNC3(device->cdev));
	rc = FUNC1(device, request);
	FUNC5(FUNC3(device->cdev));
	if (rc == 0) {
		/* Wait for the interrupt that acknowledges the halt. */
		do {
			rc = FUNC6(
				device->wait_queue,
				(request->callback == NULL)
			);
		} while (rc == -ERESTARTSYS);

		FUNC0(3, "IO stopped on %08x\n", device->cdev_id);
		rc = -ERESTARTSYS;
	}
	return rc;
}