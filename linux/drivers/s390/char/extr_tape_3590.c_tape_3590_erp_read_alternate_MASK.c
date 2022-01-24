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
struct tape_request {int dummy; } ;
struct tape_device {int /*<<< orphan*/  cdev_id; struct tape_3590_disc_data* discdata; } ;
struct tape_3590_disc_data {scalar_t__ read_back_op; } ;
struct irb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ READ_BACKWARD ; 
 scalar_t__ READ_PREVIOUS ; 
 int FUNC1 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int
FUNC3(struct tape_device *device,
			     struct tape_request *request, struct irb *irb)
{
	struct tape_3590_disc_data *data;

	/*
	 * The issued Read Backward or Read Previous command is not
	 * supported by the device
	 * The recovery action should be to issue another command:
	 * Read Revious: if Read Backward is not supported
	 * Read Backward: if Read Previous is not supported
	 */
	data = device->discdata;
	if (data->read_back_op == READ_PREVIOUS) {
		FUNC0(2, "(%08x): No support for READ_PREVIOUS command\n",
			  device->cdev_id);
		data->read_back_op = READ_BACKWARD;
	} else {
		FUNC0(2, "(%08x): No support for READ_BACKWARD command\n",
			  device->cdev_id);
		data->read_back_op = READ_PREVIOUS;
	}
	FUNC2(device, request);
	return FUNC1(device, request, irb);
}