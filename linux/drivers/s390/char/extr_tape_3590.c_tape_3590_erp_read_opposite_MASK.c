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
struct tape_request {int op; } ;
struct tape_device {int dummy; } ;
struct irb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
#define  TO_RBA 129 
#define  TO_RFO 128 
 int FUNC0 (struct tape_device*,struct tape_request*,struct irb*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int
FUNC3(struct tape_device *device,
			    struct tape_request *request, struct irb *irb)
{
	switch (request->op) {
	case TO_RFO:
		/*
		 * We did read forward, but the data could not be read.
		 * We will read backward and then skip forward again.
		 */
		FUNC2(device, request);
		return FUNC1(device, request, irb);
	case TO_RBA:
		/* We tried to read forward and backward, but hat no success */
		return FUNC0(device, request, irb, -EIO);
		break;
	default:
		return FUNC0(device, request, irb, -EIO);
	}
}