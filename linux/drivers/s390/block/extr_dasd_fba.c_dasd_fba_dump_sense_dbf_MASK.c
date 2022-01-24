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
typedef  int /*<<< orphan*/  u64 ;
struct irb {int /*<<< orphan*/  scsw; } ;
struct dasd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*,...) ; 
 int /*<<< orphan*/  DBF_EMERG ; 
 scalar_t__ FUNC1 (struct irb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct dasd_device *device, struct irb *irb,
			char *reason)
{
	u64 *sense;

	sense = (u64 *) FUNC1(irb);
	if (sense) {
		FUNC0(DBF_EMERG, device,
			      "%s: %s %02x%02x%02x %016llx %016llx %016llx "
			      "%016llx", reason,
			      FUNC5(&irb->scsw) ? "t" : "c",
			      FUNC2(&irb->scsw), FUNC3(&irb->scsw),
			      FUNC4(&irb->scsw), sense[0], sense[1],
			      sense[2], sense[3]);
	} else {
		FUNC0(DBF_EMERG, device, "%s",
			      "SORRY - NO VALID SENSE AVAILABLE\n");
	}
}