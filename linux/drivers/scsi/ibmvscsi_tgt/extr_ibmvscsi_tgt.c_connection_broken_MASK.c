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
typedef  int /*<<< orphan*/  u64 ;
struct viosrp_crq {int /*<<< orphan*/  status; int /*<<< orphan*/  format; int /*<<< orphan*/  valid; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit_id; } ;
struct scsi_info {int /*<<< orphan*/  dev; TYPE_1__ dds; } ;

/* Variables and functions */
 long H_CLOSED ; 
 int /*<<< orphan*/  MESSAGE_IN_CRQ ; 
 size_t MSG_HI ; 
 size_t MSG_LOW ; 
 int /*<<< orphan*/  PING ; 
 int /*<<< orphan*/  VALID_CMD_RESP_EL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct scsi_info *vscsi)
{
	struct viosrp_crq *crq;
	u64 buffer[2] = { 0, 0 };
	long h_return_code;
	bool rc = false;

	/* create a PING crq */
	crq = (struct viosrp_crq *)&buffer;
	crq->valid = VALID_CMD_RESP_EL;
	crq->format = MESSAGE_IN_CRQ;
	crq->status = PING;

	h_return_code = FUNC2(vscsi->dds.unit_id,
				   FUNC0(buffer[MSG_HI]),
				   FUNC0(buffer[MSG_LOW]));

	FUNC1(&vscsi->dev, "Connection_broken: rc %ld\n", h_return_code);

	if (h_return_code == H_CLOSED)
		rc = true;

	return rc;
}