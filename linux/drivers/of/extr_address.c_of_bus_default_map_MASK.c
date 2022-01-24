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
typedef  int /*<<< orphan*/  const __be32 ;

/* Variables and functions */
 scalar_t__ OF_BAD_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long,unsigned long long,unsigned long long) ; 

__attribute__((used)) static u64 FUNC2(__be32 *addr, const __be32 *range,
		int na, int ns, int pna)
{
	u64 cp, s, da;

	cp = FUNC0(range, na);
	s  = FUNC0(range + na + pna, ns);
	da = FUNC0(addr, na);

	FUNC1("default map, cp=%llx, s=%llx, da=%llx\n",
		 (unsigned long long)cp, (unsigned long long)s,
		 (unsigned long long)da);

	if (da < cp || da >= (cp + s))
		return OF_BAD_ADDR;
	return da - cp;
}