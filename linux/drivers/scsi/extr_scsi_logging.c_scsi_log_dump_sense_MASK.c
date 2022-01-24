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
struct scsi_device {int /*<<< orphan*/  sdev_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int,int,int,char*,size_t,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t*) ; 
 size_t FUNC5 (char*,size_t,char const*,int) ; 

__attribute__((used)) static void
FUNC6(const struct scsi_device *sdev, const char *name, int tag,
		    const unsigned char *sense_buffer, int sense_len)
{
	char *logbuf;
	size_t logbuf_len;
	int i;

	logbuf = FUNC4(&logbuf_len);
	if (!logbuf)
		return;

	for (i = 0; i < sense_len; i += 16) {
		int len = FUNC2(sense_len - i, 16);
		size_t off;

		off = FUNC5(logbuf, logbuf_len,
					 name, tag);
		FUNC1(&sense_buffer[i], len, 16, 1,
				   logbuf + off, logbuf_len - off,
				   false);
		FUNC0(KERN_INFO, &sdev->sdev_gendev, "%s", logbuf);
	}
	FUNC3(logbuf);
}