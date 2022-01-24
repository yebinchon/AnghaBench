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
struct tx_complete_mon_data {size_t size; int /*<<< orphan*/  buff; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct tx_complete_mon_data*) ; 
 struct tx_complete_mon_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mgmt_tx_complete ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct tx_complete_mon_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, const u8 *buf, size_t len)
{
	struct tx_complete_mon_data *mgmt_tx = NULL;

	if (!dev)
		return -EFAULT;

	FUNC3(dev);
	mgmt_tx = FUNC1(sizeof(*mgmt_tx), GFP_ATOMIC);
	if (!mgmt_tx)
		return -ENOMEM;

	mgmt_tx->buff = FUNC2(buf, len, GFP_ATOMIC);
	if (!mgmt_tx->buff) {
		FUNC0(mgmt_tx);
		return -ENOMEM;
	}

	mgmt_tx->size = len;

	FUNC5(dev, mgmt_tx, mgmt_tx->buff, mgmt_tx->size,
				   mgmt_tx_complete);

	FUNC4(dev);
	return 0;
}