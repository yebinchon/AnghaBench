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
typedef  scalar_t__ u32 ;
struct qstr {scalar_t__ len; unsigned char* name; int /*<<< orphan*/  hash; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {scalar_t__ s_namelen; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (struct dentry const*) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC5(const struct dentry *parent, struct qstr *qstr)
{
	const unsigned char *name;
	unsigned long hash;
	u32 len;

	if (qstr->len > FUNC0(parent->d_sb)->s_namelen)
		return -ENAMETOOLONG;

	len = qstr->len;
	name = qstr->name;
	hash = FUNC3(parent);
	while (len--)
		hash = FUNC4(FUNC1(*name++), hash);
	qstr->hash = FUNC2(hash);

	return 0;
}