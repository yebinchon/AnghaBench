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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int /*<<< orphan*/  sync_event; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct wilc_vif* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wilc*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct wilc_vif *vif = FUNC1(dev);
	struct wilc *wilc = vif->wilc;
	int ret = 0;

	ret = FUNC3(wilc);
	if (ret < 0)
		return ret;

	if (!FUNC2(&wilc->sync_event,
					 FUNC0(5000)))
		return -ETIME;

	return 0;
}