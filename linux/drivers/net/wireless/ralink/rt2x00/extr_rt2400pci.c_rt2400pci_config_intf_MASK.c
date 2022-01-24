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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00intf_conf {unsigned int sync; int /*<<< orphan*/  bssid; int /*<<< orphan*/  mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCNCSR1 ; 
 int /*<<< orphan*/  BCNCSR1_PRELOAD ; 
 unsigned int const CONFIG_UPDATE_BSSID ; 
 unsigned int const CONFIG_UPDATE_MAC ; 
 unsigned int const CONFIG_UPDATE_TYPE ; 
 int /*<<< orphan*/  CSR14 ; 
 int /*<<< orphan*/  CSR14_TSF_SYNC ; 
 int /*<<< orphan*/  CSR3 ; 
 int /*<<< orphan*/  CSR5 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IEEE80211_HEADER ; 
 unsigned int PREAMBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
				  struct rt2x00_intf *intf,
				  struct rt2x00intf_conf *conf,
				  const unsigned int flags)
{
	unsigned int bcn_preload;
	u32 reg;

	if (flags & CONFIG_UPDATE_TYPE) {
		/*
		 * Enable beacon config
		 */
		bcn_preload = PREAMBLE + FUNC0(IEEE80211_HEADER, 20);
		reg = FUNC3(rt2x00dev, BCNCSR1);
		FUNC1(&reg, BCNCSR1_PRELOAD, bcn_preload);
		FUNC4(rt2x00dev, BCNCSR1, reg);

		/*
		 * Enable synchronisation.
		 */
		reg = FUNC3(rt2x00dev, CSR14);
		FUNC1(&reg, CSR14_TSF_SYNC, conf->sync);
		FUNC4(rt2x00dev, CSR14, reg);
	}

	if (flags & CONFIG_UPDATE_MAC)
		FUNC2(rt2x00dev, CSR3,
					       conf->mac, sizeof(conf->mac));

	if (flags & CONFIG_UPDATE_BSSID)
		FUNC2(rt2x00dev, CSR5,
					       conf->bssid,
					       sizeof(conf->bssid));
}