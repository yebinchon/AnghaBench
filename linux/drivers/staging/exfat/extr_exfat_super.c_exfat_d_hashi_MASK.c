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
struct super_block {int dummy; } ;
struct qstr {unsigned char* name; int /*<<< orphan*/  hash; } ;
struct dentry {struct super_block* d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (struct qstr*) ; 
 unsigned long FUNC2 (struct dentry const*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(const struct dentry *dentry, struct qstr *qstr)
{
	struct super_block *sb = dentry->d_sb;
	const unsigned char *name;
	unsigned int len;
	unsigned long hash;

	name = qstr->name;
	len = FUNC1(qstr);

	hash = FUNC2(dentry);
	while (len--)
		hash = FUNC4(FUNC3(sb, *name++), hash);
	qstr->hash = FUNC0(hash);

	return 0;
}