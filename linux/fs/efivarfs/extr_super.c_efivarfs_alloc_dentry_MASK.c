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
struct qstr {char* name; int /*<<< orphan*/  len; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 struct dentry* FUNC1 (struct dentry*,struct qstr*) ; 
 int FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct dentry *parent, char *name)
{
	struct dentry *d;
	struct qstr q;
	int err;

	q.name = name;
	q.len = FUNC3(name);

	err = FUNC2(parent, &q);
	if (err)
		return FUNC0(err);

	d = FUNC1(parent, &q);
	if (d)
		return d;

	return FUNC0(-ENOMEM);
}