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
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {TYPE_1__* firmware; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct wilc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct wilc_vif *vif = FUNC2(dev);
	struct wilc *wilc = vif->wilc;
	int ret = 0;

	if (!wilc->firmware) {
		FUNC1(dev, "Firmware buffer is NULL\n");
		return -ENOBUFS;
	}

	ret = FUNC4(wilc, wilc->firmware->data,
					  wilc->firmware->size);
	if (ret < 0)
		return ret;

	FUNC3(wilc->firmware);
	wilc->firmware = NULL;

	FUNC0(dev, "Download Succeeded\n");

	return 0;
}