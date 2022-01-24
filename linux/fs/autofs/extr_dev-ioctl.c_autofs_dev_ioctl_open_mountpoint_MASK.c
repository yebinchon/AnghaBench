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
struct path {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct file* FUNC3 (struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct file*) ; 
 int FUNC5 (char const*,struct path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct path*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  test_by_dev ; 

__attribute__((used)) static int FUNC10(const char *name, dev_t devid)
{
	int err, fd;

	fd = FUNC6(O_CLOEXEC);
	if (FUNC7(fd >= 0)) {
		struct file *filp;
		struct path path;

		err = FUNC5(name, &path, test_by_dev, &devid);
		if (err)
			goto out;

		filp = FUNC3(&path, O_RDONLY, FUNC2());
		FUNC8(&path);
		if (FUNC0(filp)) {
			err = FUNC1(filp);
			goto out;
		}

		FUNC4(fd, filp);
	}

	return fd;

out:
	FUNC9(fd);
	return err;
}