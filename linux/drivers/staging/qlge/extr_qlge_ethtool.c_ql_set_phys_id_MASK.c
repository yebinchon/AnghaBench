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
struct ql_adapter {int /*<<< orphan*/  led_config; } ;
struct net_device {int dummy; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  ETHTOOL_ID_ACTIVE 129 
#define  ETHTOOL_ID_INACTIVE 128 
 int /*<<< orphan*/  QL_LED_BLINK ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev,
			  enum ethtool_phys_id_state state)

{
	struct ql_adapter *qdev = FUNC0(ndev);

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		/* Save the current LED settings */
		if (FUNC1(qdev))
			return -EIO;

		/* Start blinking */
		FUNC2(qdev, QL_LED_BLINK);
		return 0;

	case ETHTOOL_ID_INACTIVE:
		/* Restore LED settings */
		if (FUNC2(qdev, qdev->led_config))
			return -EIO;
		return 0;

	default:
		return -EINVAL;
	}
}