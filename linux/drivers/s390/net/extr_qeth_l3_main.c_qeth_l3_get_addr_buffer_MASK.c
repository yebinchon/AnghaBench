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
struct qeth_ipaddr {int dummy; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  QETH_IP_TYPE_NORMAL ; 
 struct qeth_ipaddr* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_ipaddr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct qeth_ipaddr *FUNC2(enum qeth_prot_versions prot)
{
	struct qeth_ipaddr *addr = FUNC0(sizeof(*addr), GFP_ATOMIC);

	if (addr)
		FUNC1(addr, QETH_IP_TYPE_NORMAL, prot);
	return addr;
}