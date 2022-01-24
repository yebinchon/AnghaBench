#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tape_device {TYPE_3__* cdev; } ;
struct TYPE_4__ {int emc; int mp; int md; int smc; } ;
struct TYPE_5__ {TYPE_1__ f70; } ;
struct tape_3590_sense {TYPE_2__ fmt; } ;
struct irb {scalar_t__ ecw; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC4(struct tape_device *device, struct irb *irb)
{
	struct tape_3590_sense *sense;
	char *exception, *service;

	exception = FUNC2(BUFSIZE, GFP_ATOMIC);
	service = FUNC2(BUFSIZE, GFP_ATOMIC);

	if (!exception || !service)
		goto out_nomem;

	sense = (struct tape_3590_sense *) irb->ecw;
	/* Exception Message */
	switch (sense->fmt.f70.emc) {
	case 0x02:
		FUNC3(exception, BUFSIZE, "Data degraded");
		break;
	case 0x03:
		FUNC3(exception, BUFSIZE, "Data degraded in partition %i",
			sense->fmt.f70.mp);
		break;
	case 0x04:
		FUNC3(exception, BUFSIZE, "Medium degraded");
		break;
	case 0x05:
		FUNC3(exception, BUFSIZE, "Medium degraded in partition %i",
			sense->fmt.f70.mp);
		break;
	case 0x06:
		FUNC3(exception, BUFSIZE, "Block 0 Error");
		break;
	case 0x07:
		FUNC3(exception, BUFSIZE, "Medium Exception 0x%02x",
			sense->fmt.f70.md);
		break;
	default:
		FUNC3(exception, BUFSIZE, "0x%02x",
			sense->fmt.f70.emc);
		break;
	}
	/* Service Message */
	switch (sense->fmt.f70.smc) {
	case 0x02:
		FUNC3(service, BUFSIZE, "Reference Media maintenance "
			"procedure %i", sense->fmt.f70.md);
		break;
	default:
		FUNC3(service, BUFSIZE, "0x%02x",
			sense->fmt.f70.smc);
		break;
	}

	FUNC0 (&device->cdev->dev, "Tape media information: exception %s, "
		"service %s\n", exception, service);

out_nomem:
	FUNC1(exception);
	FUNC1(service);
}