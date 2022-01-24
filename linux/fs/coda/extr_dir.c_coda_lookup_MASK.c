#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_3__ {char* name; size_t len; } ;
struct inode {TYPE_1__ d_name; struct super_block* i_sb; } ;
struct dentry {TYPE_1__ d_name; struct super_block* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct CodaFid {TYPE_2__ member_0; } ;

/* Variables and functions */
 size_t CODA_MAXNAMLEN ; 
 int CODA_NOCACHE ; 
 int C_PURGE ; 
 int C_VATTR ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct CodaFid*,struct super_block*) ; 
 struct inode* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (char const*,size_t) ; 
 struct inode* FUNC8 (struct inode*,struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC11 (struct super_block*,int /*<<< orphan*/ ,char const*,size_t,int*,struct CodaFid*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct inode *dir, struct dentry *entry, unsigned int flags)
{
	struct super_block *sb = dir->i_sb;
	const char *name = entry->d_name.name;
	size_t length = entry->d_name.len;
	struct inode *inode;
	int type = 0;

	if (length > CODA_MAXNAMLEN) {
		FUNC10("name too long: lookup, %s %zu\n",
		       FUNC6(dir), length);
		return FUNC0(-ENAMETOOLONG);
	}

	/* control object, create inode on the fly */
	if (FUNC9(dir) && FUNC7(name, length)) {
		inode = FUNC3(sb);
		type = CODA_NOCACHE;
	} else {
		struct CodaFid fid = { { 0, } };
		int error = FUNC11(sb, FUNC5(dir), name, length,
				     &type, &fid);
		inode = !error ? FUNC2(&fid, sb) : FUNC0(error);
	}

	if (!FUNC1(inode) && (type & CODA_NOCACHE))
		FUNC4(inode, C_VATTR | C_PURGE);

	if (inode == FUNC0(-ENOENT))
		inode = NULL;

	return FUNC8(inode, entry);
}