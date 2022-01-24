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
typedef  scalar_t__ u64 ;
typedef  int const __be32 ;

/* Variables and functions */
 scalar_t__ OF_BAD_ADDR ; 
 int const FUNC0 (int) ; 
 scalar_t__ FUNC1 (int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,unsigned long long,unsigned long long) ; 

__attribute__((used)) static u64 FUNC3(__be32 *addr, const __be32 *range, int na, int ns,
		int pna)
{
	u64 cp, s, da;

	/* Check address type match */
	if ((addr[0] ^ range[0]) & FUNC0(1))
		return OF_BAD_ADDR;

	/* Read address values, skipping high cell */
	cp = FUNC1(range + 1, na - 1);
	s  = FUNC1(range + na + pna, ns);
	da = FUNC1(addr + 1, na - 1);

	FUNC2("ISA map, cp=%llx, s=%llx, da=%llx\n",
		 (unsigned long long)cp, (unsigned long long)s,
		 (unsigned long long)da);

	if (da < cp || da >= (cp + s))
		return OF_BAD_ADDR;
	return da - cp;
}