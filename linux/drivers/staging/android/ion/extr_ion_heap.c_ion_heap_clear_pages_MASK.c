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
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (struct page**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

__attribute__((used)) static int FUNC3(struct page **pages, int num, pgprot_t pgprot)
{
	void *addr = FUNC1(pages, num, -1, pgprot);

	if (!addr)
		return -ENOMEM;
	FUNC0(addr, 0, PAGE_SIZE * num);
	FUNC2(addr, num);

	return 0;
}