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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FROM_XFER_BUF ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int,struct scsi_cmnd*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,unsigned int) ; 

void FUNC3(unsigned char *buffer,
			    unsigned int buflen, struct scsi_cmnd *srb)
{
	unsigned int index = 0, offset = 0;

	FUNC0(buffer, buflen, srb, &index, &offset,
				  FROM_XFER_BUF);
	if (buflen < FUNC1(srb))
		FUNC2(srb, FUNC1(srb) - buflen);
}