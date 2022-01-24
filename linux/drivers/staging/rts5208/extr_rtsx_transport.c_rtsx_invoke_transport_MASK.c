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
struct sense_data_t {int dummy; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sense_buffer; } ;
struct rtsx_chip {int /*<<< orphan*/ * sense_buffer; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 int /*<<< orphan*/  RTSX_STAT_ABORT ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int SAM_STAT_GOOD ; 
 size_t FUNC0 (struct scsi_cmnd*) ; 
 int TRANSPORT_ERROR ; 
 int TRANSPORT_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int FUNC5 (struct scsi_cmnd*,struct rtsx_chip*) ; 

void FUNC6(struct scsi_cmnd *srb, struct rtsx_chip *chip)
{
	int result;

	result = FUNC5(srb, chip);

	/*
	 * if the command gets aborted by the higher layers, we need to
	 * short-circuit all other processing.
	 */
	if (FUNC3(chip, RTSX_STAT_ABORT)) {
		FUNC1(FUNC4(chip), "-- command was aborted\n");
		srb->result = DID_ABORT << 16;
		goto handle_errors;
	}

	/* if there is a transport error, reset and don't auto-sense */
	if (result == TRANSPORT_ERROR) {
		FUNC1(FUNC4(chip), "-- transport indicates error, resetting\n");
		srb->result = DID_ERROR << 16;
		goto handle_errors;
	}

	srb->result = SAM_STAT_GOOD;

	/*
	 * If we have a failure, we're going to do a REQUEST_SENSE
	 * automatically.  Note that we differentiate between a command
	 * "failure" and an "error" in the transport mechanism.
	 */
	if (result == TRANSPORT_FAILED) {
		/* set the result so the higher layers expect this data */
		srb->result = SAM_STAT_CHECK_CONDITION;
		FUNC2(srb->sense_buffer,
		       (unsigned char *)&chip->sense_buffer[FUNC0(srb)],
		       sizeof(struct sense_data_t));
	}

	return;

handle_errors:
	return;
}