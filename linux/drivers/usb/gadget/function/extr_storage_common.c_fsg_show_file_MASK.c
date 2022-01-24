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
struct fsg_lun {int /*<<< orphan*/  filp; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ PAGE_SIZE ; 
 size_t FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rw_semaphore*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct fsg_lun*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 size_t FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rw_semaphore*) ; 

ssize_t FUNC8(struct fsg_lun *curlun, struct rw_semaphore *filesem,
		      char *buf)
{
	char		*p;
	ssize_t		rc;

	FUNC2(filesem);
	if (FUNC4(curlun)) {	/* Get the complete pathname */
		p = FUNC3(curlun->filp, buf, PAGE_SIZE - 1);
		if (FUNC0(p))
			rc = FUNC1(p);
		else {
			rc = FUNC6(p);
			FUNC5(buf, p, rc);
			buf[rc] = '\n';		/* Add a newline */
			buf[++rc] = 0;
		}
	} else {				/* No file, return 0 bytes */
		*buf = 0;
		rc = 0;
	}
	FUNC7(filesem);
	return rc;
}