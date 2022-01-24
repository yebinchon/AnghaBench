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
struct tape_device {int dummy; } ;
struct tape_3590_sense {int bra; } ;
struct irb {scalar_t__ ecw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  SENSE_BRA_CONT 131 
#define  SENSE_BRA_DRE 130 
#define  SENSE_BRA_PER 129 
#define  SENSE_BRA_RE 128 
 int TAPE_IO_STOP ; 
 int FUNC1 (struct tape_device*,struct tape_request*,struct irb*,int) ; 
 int FUNC2 (struct tape_device*,struct tape_request*,struct irb*) ; 
 int FUNC3 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int
FUNC4(struct tape_device *device, struct tape_request *request,
		    struct irb *irb, int rc)
{
	struct tape_3590_sense *sense;

	sense = (struct tape_3590_sense *) irb->ecw;

	switch (sense->bra) {
	case SENSE_BRA_PER:
		return FUNC1(device, request, irb, rc);
	case SENSE_BRA_CONT:
		return FUNC3(device, request);
	case SENSE_BRA_RE:
		return FUNC2(device, request, irb);
	case SENSE_BRA_DRE:
		return FUNC1(device, request, irb, rc);
	default:
		FUNC0();
		return TAPE_IO_STOP;
	}
}