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
struct fsg_lun {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t FUNC0 (struct fsg_lun*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rw_semaphore*) ; 
 size_t FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rw_semaphore*) ; 

ssize_t FUNC4(struct fsg_lun *curlun, struct rw_semaphore *filesem,
		     const char *buf, size_t count)
{
	ssize_t		rc;
	bool		ro;

	rc = FUNC2(buf, &ro);
	if (rc)
		return rc;

	/*
	 * Allow the write-enable status to change only while the
	 * backing file is closed.
	 */
	FUNC1(filesem);
	rc = FUNC0(curlun, ro);
	if (!rc)
		rc = count;
	FUNC3(filesem);

	return rc;
}