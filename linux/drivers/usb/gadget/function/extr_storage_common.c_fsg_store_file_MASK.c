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
struct rw_semaphore {int dummy; } ;
struct fsg_lun {int /*<<< orphan*/  unit_attention_data; scalar_t__ prevent_medium_removal; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct fsg_lun*,char*) ; 
 int /*<<< orphan*/  SS_MEDIUM_NOT_PRESENT ; 
 int /*<<< orphan*/  SS_NOT_READY_TO_READY_TRANSITION ; 
 int /*<<< orphan*/  FUNC1 (struct rw_semaphore*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_lun*) ; 
 scalar_t__ FUNC3 (struct fsg_lun*) ; 
 int FUNC4 (struct fsg_lun*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rw_semaphore*) ; 

ssize_t FUNC6(struct fsg_lun *curlun, struct rw_semaphore *filesem,
		       const char *buf, size_t count)
{
	int		rc = 0;

	if (curlun->prevent_medium_removal && FUNC3(curlun)) {
		FUNC0(curlun, "eject attempt prevented\n");
		return -EBUSY;				/* "Door is locked" */
	}

	/* Remove a trailing newline */
	if (count > 0 && buf[count-1] == '\n')
		((char *) buf)[count-1] = 0;		/* Ugh! */

	/* Load new medium */
	FUNC1(filesem);
	if (count > 0 && buf[0]) {
		/* fsg_lun_open() will close existing file if any. */
		rc = FUNC4(curlun, buf);
		if (rc == 0)
			curlun->unit_attention_data =
					SS_NOT_READY_TO_READY_TRANSITION;
	} else if (FUNC3(curlun)) {
		FUNC2(curlun);
		curlun->unit_attention_data = SS_MEDIUM_NOT_PRESENT;
	}
	FUNC5(filesem);
	return (rc < 0 ? rc : count);
}