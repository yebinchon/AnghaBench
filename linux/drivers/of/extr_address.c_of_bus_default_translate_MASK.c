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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(__be32 *addr, u64 offset, int na)
{
	u64 a = FUNC2(addr, na);
	FUNC1(addr, 0, na * 4);
	a += offset;
	if (na > 1)
		addr[na - 2] = FUNC0(a >> 32);
	addr[na - 1] = FUNC0(a & 0xffffffffu);

	return 0;
}