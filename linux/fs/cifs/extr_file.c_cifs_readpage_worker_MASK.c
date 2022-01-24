#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_5__ {void* i_atime; void* i_mtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FYI ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct file*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct page*) ; 
 void* FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 char* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (void**,void**) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct file *file, struct page *page,
	loff_t *poffset)
{
	char *read_data;
	int rc;

	/* Is the page cached? */
	rc = FUNC3(FUNC6(file), page);
	if (rc == 0)
		goto read_complete;

	read_data = FUNC8(page);
	/* for reads over a certain size could initiate async read ahead */

	rc = FUNC2(file, read_data, PAGE_SIZE, poffset);

	if (rc < 0)
		goto io_error;
	else
		FUNC1(FYI, "Bytes read %d\n", rc);

	/* we do not want atime to be less than mtime, it broke some apps */
	FUNC6(file)->i_atime = FUNC5(FUNC6(file));
	if (FUNC11(&(FUNC6(file)->i_atime), &(FUNC6(file)->i_mtime)))
		FUNC6(file)->i_atime = FUNC6(file)->i_mtime;
	else
		FUNC6(file)->i_atime = FUNC5(FUNC6(file));

	if (PAGE_SIZE > rc)
		FUNC10(read_data + rc, 0, PAGE_SIZE - rc);

	FUNC7(page);
	FUNC0(page);

	/* send this page to the cache */
	FUNC4(FUNC6(file), page);

	rc = 0;

io_error:
	FUNC9(page);
	FUNC12(page);

read_complete:
	return rc;
}