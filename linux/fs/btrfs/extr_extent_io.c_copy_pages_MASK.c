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
 scalar_t__ FUNC0 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 
 char* FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct page *dst_page, struct page *src_page,
		       unsigned long dst_off, unsigned long src_off,
		       unsigned long len)
{
	char *dst_kaddr = FUNC3(dst_page);
	char *src_kaddr;
	int must_memmove = 0;

	if (dst_page != src_page) {
		src_kaddr = FUNC3(src_page);
	} else {
		src_kaddr = dst_kaddr;
		if (FUNC0(src_off, dst_off, len))
			must_memmove = 1;
	}

	if (must_memmove)
		FUNC2(dst_kaddr + dst_off, src_kaddr + src_off, len);
	else
		FUNC1(dst_kaddr + dst_off, src_kaddr + src_off, len);
}