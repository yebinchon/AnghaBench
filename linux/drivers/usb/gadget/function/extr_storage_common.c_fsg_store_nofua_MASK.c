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
struct fsg_lun {int nofua; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_lun*) ; 
 int FUNC1 (char const*,int*) ; 

ssize_t FUNC2(struct fsg_lun *curlun, const char *buf, size_t count)
{
	bool		nofua;
	int		ret;

	ret = FUNC1(buf, &nofua);
	if (ret)
		return ret;

	/* Sync data when switching from async mode to sync */
	if (!nofua && curlun->nofua)
		FUNC0(curlun);

	curlun->nofua = nofua;

	return count;
}