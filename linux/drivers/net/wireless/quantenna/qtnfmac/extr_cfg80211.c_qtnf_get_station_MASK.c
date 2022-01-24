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
struct wiphy {int dummy; } ;
struct station_info {int /*<<< orphan*/  generation; } ;
struct qtnf_vif {int /*<<< orphan*/  generation; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qtnf_vif*,int /*<<< orphan*/  const*,struct station_info*) ; 
 struct qtnf_vif* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct wiphy *wiphy, struct net_device *dev,
		 const u8 *mac, struct station_info *sinfo)
{
	struct qtnf_vif *vif = FUNC1(dev);

	sinfo->generation = vif->generation;
	return FUNC0(vif, mac, sinfo);
}