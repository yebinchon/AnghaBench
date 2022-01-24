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
typedef  int /*<<< orphan*/  u8 ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  ipv6_addr ;
typedef  int /*<<< orphan*/  ipv4_addr ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef  struct in6_addr __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int QETH_PROT_IPV4 ; 
 int QETH_PROT_IPV6 ; 
 scalar_t__ FUNC1 (struct in6_addr) ; 
 scalar_t__ FUNC2 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *buf, enum qeth_prot_versions proto,
		 u8 *addr)
{
	__be32 ipv4_addr;
	struct in6_addr ipv6_addr;

	if (FUNC4(buf, proto, addr)) {
		return -EINVAL;
	}
	if (proto == QETH_PROT_IPV4) {
		FUNC3(&ipv4_addr, addr, sizeof(ipv4_addr));
		if (FUNC1(ipv4_addr)) {
			FUNC0(2, "multicast rxip not supported.\n");
			return -EINVAL;
		}
	} else if (proto == QETH_PROT_IPV6) {
		FUNC3(&ipv6_addr, addr, sizeof(ipv6_addr));
		if (FUNC2(&ipv6_addr)) {
			FUNC0(2, "multicast rxip not supported.\n");
			return -EINVAL;
		}
	}

	return 0;
}