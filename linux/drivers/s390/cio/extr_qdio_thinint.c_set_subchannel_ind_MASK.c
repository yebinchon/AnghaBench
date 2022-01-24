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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  summary_indicator_addr ;
typedef  int /*<<< orphan*/  subchannel_indicator_addr ;
struct TYPE_6__ {int /*<<< orphan*/  sch_no; } ;
struct qdio_irq {TYPE_3__ schid; int /*<<< orphan*/  dsci; scalar_t__ chsc_page; } ;
struct TYPE_4__ {int /*<<< orphan*/  code; } ;
struct chsc_scssc_area {TYPE_1__ response; } ;
struct TYPE_5__ {int /*<<< orphan*/  lsi_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int FUNC3 (TYPE_3__,struct chsc_scssc_area*,scalar_t__,scalar_t__) ; 
 TYPE_2__ tiqdio_airq ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qdio_irq *irq_ptr, int reset)
{
	struct chsc_scssc_area *scssc = (void *)irq_ptr->chsc_page;
	u64 summary_indicator_addr, subchannel_indicator_addr;
	int rc;

	if (reset) {
		summary_indicator_addr = 0;
		subchannel_indicator_addr = 0;
	} else {
		summary_indicator_addr = FUNC4(tiqdio_airq.lsi_ptr);
		subchannel_indicator_addr = FUNC4(irq_ptr->dsci);
	}

	rc = FUNC3(irq_ptr->schid, scssc, summary_indicator_addr,
		       subchannel_indicator_addr);
	if (rc) {
		FUNC0("%4x SSI r:%4x", irq_ptr->schid.sch_no,
			  scssc->response.code);
		goto out;
	}

	FUNC1("setscind");
	FUNC2(&summary_indicator_addr, sizeof(summary_indicator_addr));
	FUNC2(&subchannel_indicator_addr, sizeof(subchannel_indicator_addr));
out:
	return rc;
}