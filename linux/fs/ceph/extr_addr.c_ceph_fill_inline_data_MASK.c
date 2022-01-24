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
struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct inode*,int /*<<< orphan*/ ,size_t,struct page*) ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 void* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,size_t,size_t) ; 

void FUNC14(struct inode *inode, struct page *locked_page,
			   char	*data, size_t len)
{
	struct address_space *mapping = inode->i_mapping;
	struct page *page;

	if (locked_page) {
		page = locked_page;
	} else {
		if (FUNC6(inode) == 0)
			return;
		page = FUNC4(mapping, 0,
					   FUNC9(mapping,
					   ~__GFP_FS));
		if (!page)
			return;
		if (FUNC0(page)) {
			FUNC12(page);
			FUNC11(page);
			return;
		}
	}

	FUNC3("fill_inline_data %p %llx.%llx len %zu locked_page %p\n",
	     inode, FUNC2(inode), len, locked_page);

	if (len > 0) {
		void *kaddr = FUNC7(page);
		FUNC10(kaddr, data, len);
		FUNC8(kaddr);
	}

	if (page != locked_page) {
		if (len < PAGE_SIZE)
			FUNC13(page, len, PAGE_SIZE);
		else
			FUNC5(page);

		FUNC1(page);
		FUNC12(page);
		FUNC11(page);
	}
}