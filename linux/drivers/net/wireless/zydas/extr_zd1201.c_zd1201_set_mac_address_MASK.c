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
struct zd1201 {int dummy; } ;
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ZD1201_RID_CNFOWNMACADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zd1201* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct zd1201*) ; 
 int FUNC3 (struct zd1201*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct zd1201 *zd = FUNC1(dev);
	int err;

	if (!zd)
		return -ENODEV;

	err = FUNC3(zd, ZD1201_RID_CNFOWNMACADDR, 
	    addr->sa_data, dev->addr_len, 1);
	if (err)
		return err;
	FUNC0(dev->dev_addr, addr->sa_data, dev->addr_len);

	return FUNC2(zd);
}