#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v9fs_session_info {int dummy; } ;
struct TYPE_2__ {unsigned char* name; } ;
struct dentry {TYPE_1__ d_name; struct dentry* d_parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 unsigned char** FUNC1 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct v9fs_session_info *v9ses,
				  struct dentry *dentry, const unsigned char ***names)
{
	int n = 0, i;
	const unsigned char **wnames;
	struct dentry *ds;

	for (ds = dentry; !FUNC0(ds); ds = ds->d_parent)
		n++;

	wnames = FUNC1(n, sizeof(char *), GFP_KERNEL);
	if (!wnames)
		goto err_out;

	for (ds = dentry, i = (n-1); i >= 0; i--, ds = ds->d_parent)
		wnames[i] = ds->d_name.name;

	*names = wnames;
	return n;
err_out:
	return -ENOMEM;
}