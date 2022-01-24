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
struct scsi_sense_hdr {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC1 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,size_t,struct scsi_sense_hdr const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t*) ; 
 size_t FUNC5 (char*,size_t,char const*,int) ; 

__attribute__((used)) static void
FUNC6(const struct scsi_device *sdev, const char *name,
			 int tag, const struct scsi_sense_hdr *sshdr)
{
	char *logbuf;
	size_t off, logbuf_len;

	logbuf = FUNC4(&logbuf_len);
	if (!logbuf)
		return;
	off = FUNC5(logbuf, logbuf_len, name, tag);
	off += FUNC2(logbuf + off, logbuf_len - off, sshdr);
	FUNC0(KERN_INFO, &sdev->sdev_gendev, "%s", logbuf);
	FUNC3(logbuf);

	logbuf = FUNC4(&logbuf_len);
	if (!logbuf)
		return;
	off = FUNC5(logbuf, logbuf_len, name, tag);
	off += FUNC1(logbuf + off, logbuf_len - off,
				      sshdr->asc, sshdr->ascq);
	FUNC0(KERN_INFO, &sdev->sdev_gendev, "%s", logbuf);
	FUNC3(logbuf);
}