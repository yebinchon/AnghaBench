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
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  struct erofs_dirent {int /*<<< orphan*/  nid; int /*<<< orphan*/  nameoff; int /*<<< orphan*/  file_type; } const erofs_dirent ;
struct dir_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 unsigned int EROFS_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_context*,char const*,unsigned int,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (char const*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct inode *dir, struct dir_context *ctx,
			       void *dentry_blk, unsigned int *ofs,
			       unsigned int nameoff, unsigned int maxsize)
{
	struct erofs_dirent *de = dentry_blk + *ofs;
	const struct erofs_dirent *end = dentry_blk + nameoff;

	while (de < end) {
		const char *de_name;
		unsigned int de_namelen;
		unsigned char d_type;

		d_type = FUNC5(de->file_type);

		nameoff = FUNC6(de->nameoff);
		de_name = (char *)dentry_blk + nameoff;

		/* the last dirent in the block? */
		if (de + 1 >= end)
			de_namelen = FUNC8(de_name, maxsize - nameoff);
		else
			de_namelen = FUNC6(de[1].nameoff) - nameoff;

		/* a corrupted entry is found */
		if (nameoff + de_namelen > maxsize ||
		    de_namelen > EROFS_NAME_LEN) {
			FUNC4(dir->i_sb, "bogus dirent @ nid %llu",
				  FUNC1(dir)->nid);
			FUNC0(1);
			return -EFSCORRUPTED;
		}

		FUNC2(d_type, de_name, de_namelen);
		if (!FUNC3(ctx, de_name, de_namelen,
			      FUNC7(de->nid), d_type))
			/* stopped by some reason */
			return 1;
		++de;
		*ofs += sizeof(struct erofs_dirent);
	}
	*ofs = maxsize;
	return 0;
}