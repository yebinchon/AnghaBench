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
typedef  int /*<<< orphan*/  u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct ndmsg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char const*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct ndmsg *ndm, struct nlattr *tb[],
			struct net_device *dev, const unsigned char *addr,
			u16 vid, u16 flags,
			struct netlink_ext_ack *extack)
{
	if (FUNC2(addr))
		return FUNC1(FUNC3(dev),
					     addr);
	else
		return FUNC0(FUNC3(dev),
					     addr);
}