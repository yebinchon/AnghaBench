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
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int QETH_PROT_IPV4 ; 
 int QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*) ; 

void FUNC2(enum qeth_prot_versions proto, const __u8 *addr,
				char *buf)
{
	if (proto == QETH_PROT_IPV4)
		FUNC0(addr, buf);
	else if (proto == QETH_PROT_IPV6)
		FUNC1(addr, buf);
}