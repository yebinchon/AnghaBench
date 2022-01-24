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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *) ; 
 struct file* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*,char*,int) ; 

__attribute__((used)) static int FUNC5(char *path)
{
	struct file *fp;
	int ret = 0;
	char buf;

	fp = FUNC3(path, O_RDONLY, 0);
	if (FUNC0(fp))
		return FUNC1(fp);

	if (FUNC4(fp, &buf, 1) != 1)
		ret = -EINVAL;

	FUNC2(fp, NULL);
	return ret;
}