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
struct scsi_cmnd {TYPE_2__* device; int /*<<< orphan*/  result; TYPE_1__* request; } ;
struct TYPE_4__ {int /*<<< orphan*/  sdev_gendev; } ;
struct TYPE_3__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd const*) ; 
 scalar_t__ FUNC5 (char*,size_t,char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (size_t*) ; 
 char* FUNC10 (int) ; 
 size_t FUNC11 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC12(const struct scsi_cmnd *cmd, const char *msg,
		       int disposition)
{
	char *logbuf;
	size_t off, logbuf_len;
	const char *mlret_string = FUNC10(disposition);
	const char *hb_string = FUNC7(cmd->result);
	const char *db_string = FUNC6(cmd->result);

	logbuf = FUNC9(&logbuf_len);
	if (!logbuf)
		return;

	off = FUNC11(logbuf, logbuf_len,
				 FUNC4(cmd), cmd->request->tag);

	if (off >= logbuf_len)
		goto out_printk;

	if (msg) {
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "%s: ", msg);
		if (FUNC0(off >= logbuf_len))
			goto out_printk;
	}
	if (mlret_string)
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "%s ", mlret_string);
	else
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "UNKNOWN(0x%02x) ", disposition);
	if (FUNC0(off >= logbuf_len))
		goto out_printk;

	off += FUNC5(logbuf + off, logbuf_len - off, "Result: ");
	if (FUNC0(off >= logbuf_len))
		goto out_printk;

	if (hb_string)
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "hostbyte=%s ", hb_string);
	else
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "hostbyte=0x%02x ", FUNC3(cmd->result));
	if (FUNC0(off >= logbuf_len))
		goto out_printk;

	if (db_string)
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "driverbyte=%s", db_string);
	else
		off += FUNC5(logbuf + off, logbuf_len - off,
				 "driverbyte=0x%02x", FUNC2(cmd->result));
out_printk:
	FUNC1(KERN_INFO, &cmd->device->sdev_gendev, "%s", logbuf);
	FUNC8(logbuf);
}