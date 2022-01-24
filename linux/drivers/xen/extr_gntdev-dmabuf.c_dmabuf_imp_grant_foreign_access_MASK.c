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
typedef  int u32 ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int
FUNC6(struct page **pages, u32 *refs,
				int count, int domid)
{
	grant_ref_t priv_gref_head;
	int i, ret;

	ret = FUNC0(count, &priv_gref_head);
	if (ret < 0) {
		FUNC4("Cannot allocate grant references, ret %d\n", ret);
		return ret;
	}

	for (i = 0; i < count; i++) {
		int cur_ref;

		cur_ref = FUNC1(&priv_gref_head);
		if (cur_ref < 0) {
			ret = cur_ref;
			FUNC4("Cannot claim grant reference, ret %d\n", ret);
			goto out;
		}

		FUNC3(cur_ref, domid,
						FUNC5(pages[i]), 0);
		refs[i] = cur_ref;
	}

	return 0;

out:
	FUNC2(priv_gref_head);
	return ret;
}