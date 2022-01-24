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
typedef  int /*<<< orphan*/  u8 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; struct address_space* i_mapping; } ;
struct erofs_qstr {int /*<<< orphan*/ * end; int /*<<< orphan*/ * name; } ;
struct erofs_dirent {int /*<<< orphan*/  nameoff; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  ENOENT ; 
 int EROFS_BLKSIZ ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct erofs_qstr*,struct erofs_qstr*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int const,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*) ; 
 struct erofs_dirent* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct erofs_dirent*) ; 
 unsigned int FUNC9 (unsigned int,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 struct page* FUNC12 (struct address_space* const,int const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct page *FUNC13(struct inode *dir,
					      struct erofs_qstr *name,
					      int *_ndirents)
{
	unsigned int startprfx, endprfx;
	int head, back;
	struct address_space *const mapping = dir->i_mapping;
	struct page *candidate = FUNC2(-ENOENT);

	startprfx = endprfx = 0;
	head = 0;
	back = FUNC6(dir) - 1;

	while (head <= back) {
		const int mid = head + (back - head) / 2;
		struct page *page = FUNC12(mapping, mid, NULL);

		if (!FUNC3(page)) {
			struct erofs_dirent *de = FUNC7(page);
			const int nameoff = FUNC10(de->nameoff,
							      EROFS_BLKSIZ);
			const int ndirents = nameoff / sizeof(*de);
			int diff;
			unsigned int matched;
			struct erofs_qstr dname;

			if (!ndirents) {
				FUNC8(de);
				FUNC11(page);
				FUNC5(dir->i_sb,
					  "corrupted dir block %d @ nid %llu",
					  mid, FUNC1(dir)->nid);
				FUNC0(1);
				page = FUNC2(-EFSCORRUPTED);
				goto out;
			}

			matched = FUNC9(startprfx, endprfx);

			dname.name = (u8 *)de + nameoff;
			if (ndirents == 1)
				dname.end = (u8 *)de + EROFS_BLKSIZ;
			else
				dname.end = (u8 *)de +
					FUNC10(de[1].nameoff,
							  EROFS_BLKSIZ);

			/* string comparison without already matched prefix */
			diff = FUNC4(name, &dname, &matched);
			FUNC8(de);

			if (!diff) {
				*_ndirents = 0;
				goto out;
			} else if (diff > 0) {
				head = mid + 1;
				startprfx = matched;

				if (!FUNC3(candidate))
					FUNC11(candidate);
				candidate = page;
				*_ndirents = ndirents;
			} else {
				FUNC11(page);

				back = mid - 1;
				endprfx = matched;
			}
			continue;
		}
out:		/* free if the candidate is valid */
		if (!FUNC3(candidate))
			FUNC11(candidate);
		return page;
	}
	return candidate;
}