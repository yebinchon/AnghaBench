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
struct TCP_Server_Info {int total_read; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int FUNC0 (struct TCP_Server_Info*,struct page*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int
FUNC2(struct TCP_Server_Info *server, struct page **pages,
		     unsigned int npages, unsigned int len)
{
	int i;
	int length;

	for (i = 0; i < npages; i++) {
		struct page *page = pages[i];
		size_t n;

		n = len;
		if (len >= PAGE_SIZE) {
			/* enough data to fill the page */
			n = PAGE_SIZE;
			len -= n;
		} else {
			FUNC1(page, len, PAGE_SIZE - len);
			len = 0;
		}
		length = FUNC0(server, page, 0, n);
		if (length < 0)
			return length;
		server->total_read += length;
	}

	return 0;
}