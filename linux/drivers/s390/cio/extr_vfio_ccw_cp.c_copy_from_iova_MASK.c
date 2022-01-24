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
typedef  int u64 ;
struct pfn_array {int pa_nr; int* pa_pfn; int /*<<< orphan*/  member_0; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,void*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (struct pfn_array*,int,unsigned long) ; 
 int FUNC3 (struct pfn_array*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfn_array*,struct device*) ; 

__attribute__((used)) static long FUNC5(struct device *mdev,
			   void *to, u64 iova,
			   unsigned long n)
{
	struct pfn_array pa = {0};
	u64 from;
	int i, ret;
	unsigned long l, m;

	ret = FUNC2(&pa, iova, n);
	if (ret < 0)
		return ret;

	ret = FUNC3(&pa, mdev);
	if (ret < 0) {
		FUNC4(&pa, mdev);
		return ret;
	}

	l = n;
	for (i = 0; i < pa.pa_nr; i++) {
		from = pa.pa_pfn[i] << PAGE_SHIFT;
		m = PAGE_SIZE;
		if (i == 0) {
			from += iova & (PAGE_SIZE - 1);
			m -= iova & (PAGE_SIZE - 1);
		}

		m = FUNC1(l, m);
		FUNC0(to + (n - l), (void *)from, m);

		l -= m;
		if (l == 0)
			break;
	}

	FUNC4(&pa, mdev);

	return l;
}