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
struct scsi_cmnd {int cmd_len; TYPE_2__* device; int /*<<< orphan*/ * cmnd; TYPE_1__* request; } ;
struct TYPE_4__ {int /*<<< orphan*/  sdev_gendev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,int,int,char*,size_t,int) ; 
 size_t FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC5 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC6 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t*) ; 
 size_t FUNC9 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct scsi_cmnd *cmd)
{
	int k;
	char *logbuf;
	size_t off, logbuf_len;

	if (!cmd->cmnd)
		return;

	logbuf = FUNC8(&logbuf_len);
	if (!logbuf)
		return;

	off = FUNC9(logbuf, logbuf_len,
				 FUNC4(cmd), cmd->request->tag);
	if (off >= logbuf_len)
		goto out_printk;
	off += FUNC5(logbuf + off, logbuf_len - off, "CDB: ");
	if (FUNC0(off >= logbuf_len))
		goto out_printk;

	off += FUNC6(logbuf + off, logbuf_len - off,
				       cmd->cmnd);
	if (off >= logbuf_len)
		goto out_printk;

	/* print out all bytes in cdb */
	if (cmd->cmd_len > 16) {
		/* Print opcode in one line and use separate lines for CDB */
		off += FUNC5(logbuf + off, logbuf_len - off, "\n");
		FUNC1(KERN_INFO, &cmd->device->sdev_gendev, "%s", logbuf);
		FUNC7(logbuf);
		for (k = 0; k < cmd->cmd_len; k += 16) {
			size_t linelen = FUNC3(cmd->cmd_len - k, 16);

			logbuf = FUNC8(&logbuf_len);
			if (!logbuf)
				break;
			off = FUNC9(logbuf, logbuf_len,
						 FUNC4(cmd),
						 cmd->request->tag);
			if (!FUNC0(off > logbuf_len - 58)) {
				off += FUNC5(logbuf + off, logbuf_len - off,
						 "CDB[%02x]: ", k);
				FUNC2(&cmd->cmnd[k], linelen,
						   16, 1, logbuf + off,
						   logbuf_len - off, false);
			}
			FUNC1(KERN_INFO, &cmd->device->sdev_gendev, "%s",
				   logbuf);
			FUNC7(logbuf);
		}
		return;
	}
	if (!FUNC0(off > logbuf_len - 49)) {
		off += FUNC5(logbuf + off, logbuf_len - off, " ");
		FUNC2(cmd->cmnd, cmd->cmd_len, 16, 1,
				   logbuf + off, logbuf_len - off,
				   false);
	}
out_printk:
	FUNC1(KERN_INFO, &cmd->device->sdev_gendev, "%s", logbuf);
	FUNC7(logbuf);
}