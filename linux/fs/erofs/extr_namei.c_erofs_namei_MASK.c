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
struct qstr {scalar_t__ len; scalar_t__ name; } ;
struct page {unsigned int file_type; int /*<<< orphan*/  nid; } ;
struct inode {int /*<<< orphan*/  i_size; } ;
struct erofs_qstr {scalar_t__ end; scalar_t__ name; } ;
struct erofs_dirent {unsigned int file_type; int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  erofs_nid_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  EROFS_BLKSIZ ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct inode*,struct erofs_qstr*,int*) ; 
 struct page* FUNC4 (struct erofs_qstr*,void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

int FUNC9(struct inode *dir,
		struct qstr *name,
		erofs_nid_t *nid, unsigned int *d_type)
{
	int ndirents;
	struct page *page;
	void *data;
	struct erofs_dirent *de;
	struct erofs_qstr qn;

	if (!dir->i_size)
		return -ENOENT;

	qn.name = name->name;
	qn.end = name->name + name->len;

	ndirents = 0;
	page = FUNC3(dir, &qn, &ndirents);

	if (FUNC0(page))
		return FUNC1(page);

	data = FUNC5(page);
	/* the target page has been mapped */
	if (ndirents)
		de = FUNC4(&qn, data, EROFS_BLKSIZ, ndirents);
	else
		de = (struct erofs_dirent *)data;

	if (!FUNC0(de)) {
		*nid = FUNC7(de->nid);
		*d_type = de->file_type;
	}

	FUNC6(data);
	FUNC8(page);

	return FUNC2(de);
}