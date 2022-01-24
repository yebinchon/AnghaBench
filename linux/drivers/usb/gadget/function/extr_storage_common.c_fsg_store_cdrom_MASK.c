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
struct fsg_lun {int cdrom; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct fsg_lun*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rw_semaphore*) ; 
 int FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rw_semaphore*) ; 

ssize_t FUNC4(struct fsg_lun *curlun, struct rw_semaphore *filesem,
			const char *buf, size_t count)
{
	bool		cdrom;
	int		ret;

	ret = FUNC2(buf, &cdrom);
	if (ret)
		return ret;

	FUNC1(filesem);
	ret = cdrom ? FUNC0(curlun, true) : 0;

	if (!ret) {
		curlun->cdrom = cdrom;
		ret = count;
	}
	FUNC3(filesem);

	return ret;
}