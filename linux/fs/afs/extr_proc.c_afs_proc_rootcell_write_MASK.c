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
struct seq_file {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct afs_net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct afs_net*,char*) ; 
 struct afs_net* FUNC3 (struct seq_file*) ; 
 char* FUNC4 (char*,char,size_t) ; 

__attribute__((used)) static int FUNC5(struct file *file, char *buf, size_t size)
{
	struct seq_file *m = file->private_data;
	struct afs_net *net = FUNC3(m);
	char *s;
	int ret;

	ret = -EINVAL;
	if (buf[0] == '.')
		goto out;
	if (FUNC4(buf, '/', size))
		goto out;

	/* trim to first NL */
	s = FUNC4(buf, '\n', size);
	if (s)
		*s = 0;

	/* determine command to perform */
	FUNC0("rootcell=%s", buf);

	ret = FUNC2(net, buf);

out:
	FUNC1(" = %d", ret);
	return ret;
}