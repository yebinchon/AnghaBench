#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {unsigned char* sa_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_4addr; int /*<<< orphan*/  iftype; } ;
struct qtnf_vif {TYPE_1__ wdev; int /*<<< orphan*/  mac; } ;
struct net_device {unsigned char* dev_addr; } ;
typedef  int /*<<< orphan*/  old_addr ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (struct net_device*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,int) ; 
 int FUNC2 (struct qtnf_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 struct qtnf_vif* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, void *addr)
{
	struct qtnf_vif *vif = FUNC3(ndev);
	struct sockaddr *sa = addr;
	int ret;
	unsigned char old_addr[ETH_ALEN];

	FUNC1(old_addr, sa->sa_data, sizeof(old_addr));

	ret = FUNC0(ndev, sa);
	if (ret)
		return ret;

	FUNC4(vif->mac, true);

	ret = FUNC2(vif, vif->wdev.iftype,
					     vif->wdev.use_4addr,
					     sa->sa_data);

	if (ret)
		FUNC1(ndev->dev_addr, old_addr, ETH_ALEN);

	return ret;
}