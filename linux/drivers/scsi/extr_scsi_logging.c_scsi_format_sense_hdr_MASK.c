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
struct scsi_sense_hdr {int response_code; int /*<<< orphan*/  sense_key; } ;

/* Variables and functions */
 size_t FUNC0 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC1 (struct scsi_sense_hdr const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t
FUNC3(char *buffer, size_t buf_len,
		      const struct scsi_sense_hdr *sshdr)
{
	const char *sense_txt;
	size_t off;

	off = FUNC0(buffer, buf_len, "Sense Key : ");
	sense_txt = FUNC2(sshdr->sense_key);
	if (sense_txt)
		off += FUNC0(buffer + off, buf_len - off,
				 "%s ", sense_txt);
	else
		off += FUNC0(buffer + off, buf_len - off,
				 "0x%x ", sshdr->sense_key);
	off += FUNC0(buffer + off, buf_len - off,
		FUNC1(sshdr) ? "[deferred] " : "[current] ");

	if (sshdr->response_code >= 0x72)
		off += FUNC0(buffer + off, buf_len - off, "[descriptor] ");
	return off;
}