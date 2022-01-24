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
typedef  scalar_t__ uint ;
struct TYPE_4__ {scalar_t__ timer_pops; } ;
struct TYPE_3__ {int /*<<< orphan*/  unit_id; } ;
struct scsi_info {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_dev; scalar_t__ credit; scalar_t__ debit; TYPE_2__ rsp_q_timer; int /*<<< orphan*/  flags; TYPE_1__ dds; } ;

/* Variables and functions */
 long ADAPT_SUCCESS ; 
#define  H_CLOSED 132 
#define  H_DROPPED 131 
 int /*<<< orphan*/  H_ENABLE_PREPARE_FOR_SUSPEND ; 
#define  H_HARDWARE 130 
 long H_NOT_FOUND ; 
#define  H_PARAMETER 129 
#define  H_SUCCESS 128 
 scalar_t__ INIT_MSG ; 
 int /*<<< orphan*/  PREP_FOR_SUSPEND_ENABLED ; 
 int /*<<< orphan*/  PRESERVE_FLAG_FIELDS ; 
 int /*<<< orphan*/  UNDEFINED ; 
 scalar_t__ UNUSED_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (struct scsi_info*,scalar_t__*) ; 
 long FUNC4 (struct scsi_info*) ; 
 long FUNC5 (struct scsi_info*,scalar_t__) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC7(struct scsi_info *vscsi)
{
	long rc = ADAPT_SUCCESS;
	uint format;

	rc = FUNC2(vscsi->dds.unit_id, H_ENABLE_PREPARE_FOR_SUSPEND, 30000,
		      0, 0, 0, 0);
	if (rc == H_SUCCESS)
		vscsi->flags |= PREP_FOR_SUSPEND_ENABLED;
	else if (rc != H_NOT_FOUND)
		FUNC0(&vscsi->dev, "Error from Enable Prepare for Suspend: %ld\n",
			rc);

	vscsi->flags &= PRESERVE_FLAG_FIELDS;
	vscsi->rsp_q_timer.timer_pops = 0;
	vscsi->debit = 0;
	vscsi->credit = 0;

	rc = FUNC6(vscsi->dma_dev);
	if (rc) {
		FUNC1(&vscsi->dev, "establish_new_q: failed to enable interrupts, rc %ld\n",
			 rc);
		return rc;
	}

	rc = FUNC3(vscsi, &format);
	if (rc) {
		FUNC0(&vscsi->dev, "establish_new_q: check_init_msg failed, rc %ld\n",
			rc);
		return rc;
	}

	if (format == UNUSED_FORMAT) {
		rc = FUNC5(vscsi, INIT_MSG);
		switch (rc) {
		case H_SUCCESS:
		case H_DROPPED:
		case H_CLOSED:
			rc = ADAPT_SUCCESS;
			break;

		case H_PARAMETER:
		case H_HARDWARE:
			break;

		default:
			vscsi->state = UNDEFINED;
			rc = H_HARDWARE;
			break;
		}
	} else if (format == INIT_MSG) {
		rc = FUNC4(vscsi);
	}

	return rc;
}