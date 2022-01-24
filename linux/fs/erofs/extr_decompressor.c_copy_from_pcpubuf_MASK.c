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

/* Variables and functions */
 unsigned short PAGE_SIZE ; 
 char* FUNC0 (struct page* const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int const,int) ; 
 int /*<<< orphan*/  uint ; 

__attribute__((used)) static void FUNC4(struct page **out, const char *dst,
			      unsigned short pageofs_out,
			      unsigned int outputsize)
{
	const char *end = dst + outputsize;
	const unsigned int righthalf = PAGE_SIZE - pageofs_out;
	const char *cur = dst - pageofs_out;

	while (cur < end) {
		struct page *const page = *out++;

		if (page) {
			char *buf = FUNC0(page);

			if (cur >= dst) {
				FUNC2(buf, cur, FUNC3(uint, PAGE_SIZE,
						       end - cur));
			} else {
				FUNC2(buf + pageofs_out, cur + pageofs_out,
				       FUNC3(uint, righthalf, end - cur));
			}
			FUNC1(buf);
		}
		cur += PAGE_SIZE;
	}
}