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
struct sockaddr {scalar_t__ sa_data; } ;
struct ql_adapter {int func; int /*<<< orphan*/  ndev; scalar_t__ current_mac_addr; } ;
struct net_device {scalar_t__ dev_addr; int /*<<< orphan*/  addr_len; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  MAC_ADDR_TYPE_CAM_MAC ; 
 int MAX_CQ ; 
 int /*<<< orphan*/  SEM_MAC_ADDR_MASK ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ql_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ql_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev, void *p)
{
	struct ql_adapter *qdev = FUNC2(ndev);
	struct sockaddr *addr = p;
	int status;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;
	FUNC1(ndev->dev_addr, addr->sa_data, ndev->addr_len);
	/* Update local copy of current mac address. */
	FUNC1(qdev->current_mac_addr, ndev->dev_addr, ndev->addr_len);

	status = FUNC4(qdev, SEM_MAC_ADDR_MASK);
	if (status)
		return status;
	status = FUNC6(qdev, (u8 *) ndev->dev_addr,
			MAC_ADDR_TYPE_CAM_MAC, qdev->func * MAX_CQ);
	if (status)
		FUNC3(qdev, hw, qdev->ndev, "Failed to load MAC address.\n");
	FUNC5(qdev, SEM_MAC_ADDR_MASK);
	return status;
}