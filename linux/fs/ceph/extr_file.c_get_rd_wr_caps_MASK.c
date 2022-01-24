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
struct file {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_CAP_FILE_BUFFER ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_RD ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_SHARED ; 
 int /*<<< orphan*/  CEPH_CAP_FILE_WR ; 
 int EAGAIN ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *src_filp, int *src_got,
			  struct file *dst_filp,
			  loff_t dst_endoff, int *dst_got)
{
	int ret = 0;
	bool retrying = false;

retry_caps:
	ret = FUNC0(dst_filp, CEPH_CAP_FILE_WR, CEPH_CAP_FILE_BUFFER,
			    dst_endoff, dst_got, NULL);
	if (ret < 0)
		return ret;

	/*
	 * Since we're already holding the FILE_WR capability for the dst file,
	 * we would risk a deadlock by using ceph_get_caps.  Thus, we'll do some
	 * retry dance instead to try to get both capabilities.
	 */
	ret = FUNC3(FUNC4(src_filp),
				CEPH_CAP_FILE_RD, CEPH_CAP_FILE_SHARED,
				false, src_got);
	if (ret <= 0) {
		/* Start by dropping dst_ci caps and getting src_ci caps */
		FUNC2(FUNC1(FUNC4(dst_filp)), *dst_got);
		if (retrying) {
			if (!ret)
				/* ceph_try_get_caps masks EAGAIN */
				ret = -EAGAIN;
			return ret;
		}
		ret = FUNC0(src_filp, CEPH_CAP_FILE_RD,
				    CEPH_CAP_FILE_SHARED, -1, src_got, NULL);
		if (ret < 0)
			return ret;
		/*... drop src_ci caps too, and retry */
		FUNC2(FUNC1(FUNC4(src_filp)), *src_got);
		retrying = true;
		goto retry_caps;
	}
	return ret;
}