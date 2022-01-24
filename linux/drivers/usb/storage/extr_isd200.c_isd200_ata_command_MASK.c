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
typedef  union ata_cdb {int dummy; } ata_cdb ;
struct us_data {int /*<<< orphan*/ * extra; } ;
struct scsi_cmnd {int result; } ;

/* Variables and functions */
 int DID_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct us_data*,struct scsi_cmnd*,union ata_cdb*) ; 
 int FUNC1 (struct scsi_cmnd*,struct us_data*,union ata_cdb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int) ; 
 int FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct us_data*,char*) ; 

__attribute__((used)) static void FUNC6(struct scsi_cmnd *srb, struct us_data *us)
{
	int sendToTransport, orig_bufflen;
	union ata_cdb ataCdb;

	/* Make sure driver was initialized */

	if (us->extra == NULL) {
		FUNC5(us, "ERROR Driver not initialized\n");
		srb->result = DID_ERROR << 16;
		return;
	}

	FUNC4(srb, 0);
	/* scsi_bufflen might change in protocol translation to ata */
	orig_bufflen = FUNC3(srb);
	sendToTransport = FUNC1(srb, us, &ataCdb);

	/* send the command to the transport layer */
	if (sendToTransport)
		FUNC0(us, srb, &ataCdb);

	FUNC2(srb, orig_bufflen);
}