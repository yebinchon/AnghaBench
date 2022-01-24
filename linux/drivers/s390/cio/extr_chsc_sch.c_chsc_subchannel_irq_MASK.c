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
struct TYPE_2__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; } ;
struct subchannel {int /*<<< orphan*/  dev; TYPE_1__ schid; } ;
struct irb {int dummy; } ;
struct chsc_request {int /*<<< orphan*/  completion; int /*<<< orphan*/  irb; } ;
struct chsc_private {struct chsc_request* request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct irb*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQIO_CSC ; 
 int /*<<< orphan*/  cio_irb ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct chsc_private* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct irb*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct irb* FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct subchannel *sch)
{
	struct chsc_private *private = FUNC5(&sch->dev);
	struct chsc_request *request = private->request;
	struct irb *irb = FUNC9(&cio_irb);

	FUNC0(4, "irb");
	FUNC1(4, irb, sizeof(*irb));
	FUNC6(IRQIO_CSC);

	/* Copy irb to provided request and set done. */
	if (!request) {
		FUNC2(0, "Interrupt on sch 0.%x.%04x with no request\n",
			 sch->schid.ssid, sch->schid.sch_no);
		return;
	}
	private->request = NULL;
	FUNC7(&request->irb, irb, sizeof(*irb));
	FUNC3(sch);
	FUNC4(&request->completion);
	FUNC8(&sch->dev);
}