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
typedef  int /*<<< orphan*/  u16 ;
struct ctlr_info {int dummy; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;

/* Variables and functions */
 scalar_t__ CMD_DATA_UNDERRUN ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  HPSA_INQUIRY ; 
 int IO_OK ; 
 int /*<<< orphan*/  NO_TIMEOUT ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 struct CommandList* FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 scalar_t__ FUNC2 (struct CommandList*,int /*<<< orphan*/ ,struct ctlr_info*,unsigned char*,unsigned char,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ctlr_info*,struct CommandList*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ctlr_info*,struct CommandList*) ; 

__attribute__((used)) static int FUNC5(struct ctlr_info *h, unsigned char *scsi3addr,
			u16 page, unsigned char *buf,
			unsigned char bufsize)
{
	int rc = IO_OK;
	struct CommandList *c;
	struct ErrorInfo *ei;

	c = FUNC0(h);

	if (FUNC2(c, HPSA_INQUIRY, h, buf, bufsize,
			page, scsi3addr, TYPE_CMD)) {
		rc = -1;
		goto out;
	}
	rc = FUNC3(h, c, DMA_FROM_DEVICE,
			NO_TIMEOUT);
	if (rc)
		goto out;
	ei = c->err_info;
	if (ei->CommandStatus != 0 && ei->CommandStatus != CMD_DATA_UNDERRUN) {
		FUNC4(h, c);
		rc = -1;
	}
out:
	FUNC1(h, c);
	return rc;
}