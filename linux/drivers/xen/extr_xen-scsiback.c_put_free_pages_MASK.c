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
struct page {int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  free_pages_lock ; 
 int free_pages_num ; 
 int /*<<< orphan*/  FUNC0 (int,struct page**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  scsiback_free_pages ; 
 int scsiback_max_buffer_pages ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct page **page, int num)
{
	unsigned long flags;
	int i = free_pages_num + num, n = num;

	if (num == 0)
		return;
	if (i > scsiback_max_buffer_pages) {
		n = FUNC2(num, i - scsiback_max_buffer_pages);
		FUNC0(n, page + num - n);
		n = num - n;
	}
	FUNC3(&free_pages_lock, flags);
	for (i = 0; i < n; i++)
		FUNC1(&page[i]->lru, &scsiback_free_pages);
	free_pages_num += n;
	FUNC4(&free_pages_lock, flags);
}