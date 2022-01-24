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
struct ql_adapter {int /*<<< orphan*/  active_vlans; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  SEM_MAC_ADDR_MASK ; 
 int FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ql_adapter* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, __be16 proto, u16 vid)
{
	struct ql_adapter *qdev = FUNC2(ndev);
	int status;
	int err;

	status = FUNC3(qdev, SEM_MAC_ADDR_MASK);
	if (status)
		return status;

	err = FUNC0(qdev, vid);
	FUNC1(vid, qdev->active_vlans);

	FUNC4(qdev, SEM_MAC_ADDR_MASK);

	return err;
}