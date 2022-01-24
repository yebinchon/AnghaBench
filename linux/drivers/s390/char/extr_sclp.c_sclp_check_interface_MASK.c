#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int response_code; } ;
struct init_sccb {TYPE_1__ header; } ;
struct TYPE_4__ {scalar_t__ status; int /*<<< orphan*/  command; scalar_t__ sccb; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  EXT_IRQ_SERVICE_SIG ; 
 int HZ ; 
 int /*<<< orphan*/  IRQ_SUBCLASS_SERVICE_SIGNAL ; 
 int SCLP_INIT_RETRY ; 
 scalar_t__ SCLP_REQ_DONE ; 
 scalar_t__ SCLP_REQ_RUNNING ; 
 int SCLP_RETRY_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sclp_check_handler ; 
 int /*<<< orphan*/  sclp_check_timeout ; 
 TYPE_2__ sclp_init_req ; 
 int /*<<< orphan*/  sclp_lock ; 
 int sclp_mask_compat_mode ; 
 int /*<<< orphan*/  sclp_request_timer ; 
 int /*<<< orphan*/  sclp_running_state ; 
 int /*<<< orphan*/  sclp_running_state_running ; 
 int FUNC6 (int /*<<< orphan*/ ,struct init_sccb*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(void)
{
	struct init_sccb *sccb;
	unsigned long flags;
	int retry;
	int rc;

	FUNC8(&sclp_lock, flags);
	/* Prepare init mask command */
	rc = FUNC5(EXT_IRQ_SERVICE_SIG, sclp_check_handler);
	if (rc) {
		FUNC9(&sclp_lock, flags);
		return rc;
	}
	for (retry = 0; retry <= SCLP_INIT_RETRY; retry++) {
		FUNC0(0, 0);
		sccb = (struct init_sccb *) sclp_init_req.sccb;
		rc = FUNC6(sclp_init_req.command, sccb);
		if (rc == -EIO)
			break;
		sclp_init_req.status = SCLP_REQ_RUNNING;
		sclp_running_state = sclp_running_state_running;
		FUNC1(SCLP_RETRY_INTERVAL * HZ,
					 sclp_check_timeout);
		FUNC9(&sclp_lock, flags);
		/* Enable service-signal interruption - needs to happen
		 * with IRQs enabled. */
		FUNC3(IRQ_SUBCLASS_SERVICE_SIGNAL);
		/* Wait for signal from interrupt or timeout */
		FUNC7();
		/* Disable service-signal interruption - needs to happen
		 * with IRQs enabled. */
		FUNC4(IRQ_SUBCLASS_SERVICE_SIGNAL);
		FUNC8(&sclp_lock, flags);
		FUNC2(&sclp_request_timer);
		rc = -EBUSY;
		if (sclp_init_req.status == SCLP_REQ_DONE) {
			if (sccb->header.response_code == 0x20) {
				rc = 0;
				break;
			} else if (sccb->header.response_code == 0x74f0) {
				if (!sclp_mask_compat_mode) {
					sclp_mask_compat_mode = true;
					retry = 0;
				}
			}
		}
	}
	FUNC10(EXT_IRQ_SERVICE_SIG, sclp_check_handler);
	FUNC9(&sclp_lock, flags);
	return rc;
}