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
struct ks_wlan_private {int dummy; } ;

/* Variables and functions */
 unsigned int SME_FRAG ; 
 int /*<<< orphan*/  SME_FRAGMENTATION_THRESHOLD_REQUEST ; 
 int /*<<< orphan*/  SME_MODE_SET_REQUEST ; 
 unsigned int SME_RSN ; 
 unsigned int SME_RSN_AUTH ; 
 int /*<<< orphan*/  SME_RSN_AUTH_REQUEST ; 
 int /*<<< orphan*/  SME_RSN_ENABLED_REQUEST ; 
 int /*<<< orphan*/  SME_RSN_MCAST_REQUEST ; 
 int /*<<< orphan*/  SME_RSN_MODE_REQUEST ; 
 unsigned int SME_RSN_MULTICAST ; 
 int /*<<< orphan*/  SME_RSN_UCAST_REQUEST ; 
 unsigned int SME_RSN_UNICAST ; 
 unsigned int SME_RTS ; 
 int /*<<< orphan*/  SME_RTS_THRESHOLD_REQUEST ; 
 int /*<<< orphan*/  SME_START_REQUEST ; 
 int /*<<< orphan*/  SME_STOP_REQUEST ; 
 unsigned int SME_WEP_FLAG ; 
 int /*<<< orphan*/  SME_WEP_FLAG_REQUEST ; 
 unsigned int SME_WEP_INDEX ; 
 int /*<<< orphan*/  SME_WEP_INDEX_REQUEST ; 
 int /*<<< orphan*/  SME_WEP_KEY1_REQUEST ; 
 int /*<<< orphan*/  SME_WEP_KEY2_REQUEST ; 
 int /*<<< orphan*/  SME_WEP_KEY3_REQUEST ; 
 int /*<<< orphan*/  SME_WEP_KEY4_REQUEST ; 
 unsigned int SME_WEP_VAL1 ; 
 unsigned int SME_WEP_VAL2 ; 
 unsigned int SME_WEP_VAL3 ; 
 unsigned int SME_WEP_VAL4 ; 
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 

int FUNC1(struct ks_wlan_private *priv,
			    unsigned int commit_flag)
{
	FUNC0(priv, SME_STOP_REQUEST);

	if (commit_flag & SME_RTS)
		FUNC0(priv, SME_RTS_THRESHOLD_REQUEST);
	if (commit_flag & SME_FRAG)
		FUNC0(priv, SME_FRAGMENTATION_THRESHOLD_REQUEST);

	if (commit_flag & SME_WEP_INDEX)
		FUNC0(priv, SME_WEP_INDEX_REQUEST);
	if (commit_flag & SME_WEP_VAL1)
		FUNC0(priv, SME_WEP_KEY1_REQUEST);
	if (commit_flag & SME_WEP_VAL2)
		FUNC0(priv, SME_WEP_KEY2_REQUEST);
	if (commit_flag & SME_WEP_VAL3)
		FUNC0(priv, SME_WEP_KEY3_REQUEST);
	if (commit_flag & SME_WEP_VAL4)
		FUNC0(priv, SME_WEP_KEY4_REQUEST);
	if (commit_flag & SME_WEP_FLAG)
		FUNC0(priv, SME_WEP_FLAG_REQUEST);

	if (commit_flag & SME_RSN) {
		FUNC0(priv, SME_RSN_ENABLED_REQUEST);
		FUNC0(priv, SME_RSN_MODE_REQUEST);
	}
	if (commit_flag & SME_RSN_MULTICAST)
		FUNC0(priv, SME_RSN_MCAST_REQUEST);
	if (commit_flag & SME_RSN_UNICAST)
		FUNC0(priv, SME_RSN_UCAST_REQUEST);
	if (commit_flag & SME_RSN_AUTH)
		FUNC0(priv, SME_RSN_AUTH_REQUEST);

	FUNC0(priv, SME_MODE_SET_REQUEST);

	FUNC0(priv, SME_START_REQUEST);

	return 0;
}