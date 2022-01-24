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
typedef  void* u32 ;
struct TYPE_2__ {void* tdm_num; void* tx_sync; void* rx_sync; } ;
struct ucc_tdm_info {TYPE_1__ uf_info; } ;
struct ucc_tdm {int tdm_framer_type; void* siram_entry_id; int /*<<< orphan*/  tdm_mode; void* tdm_port; void* rx_ts_mask; void* tx_ts_mask; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 void* QE_CLK_NONE ; 
 void* QE_RSYNC_PIN ; 
 void* QE_TSYNC_PIN ; 
 int /*<<< orphan*/  TDM_INTERNAL_LOOPBACK ; 
 int /*<<< orphan*/  TDM_NORMAL ; 
 char* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 int FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucc_tdm*,struct ucc_tdm_info*) ; 
 int FUNC6 (char const*) ; 

int FUNC7(struct device_node *np, struct ucc_tdm *utdm,
		     struct ucc_tdm_info *ut_info)
{
	const char *sprop;
	int ret = 0;
	u32 val;

	sprop = FUNC0(np, "fsl,rx-sync-clock", NULL);
	if (sprop) {
		ut_info->uf_info.rx_sync = FUNC4(sprop);
		if ((ut_info->uf_info.rx_sync < QE_CLK_NONE) ||
		    (ut_info->uf_info.rx_sync > QE_RSYNC_PIN)) {
			FUNC3("QE-TDM: Invalid rx-sync-clock property\n");
			return -EINVAL;
		}
	} else {
		FUNC3("QE-TDM: Invalid rx-sync-clock property\n");
		return -EINVAL;
	}

	sprop = FUNC0(np, "fsl,tx-sync-clock", NULL);
	if (sprop) {
		ut_info->uf_info.tx_sync = FUNC4(sprop);
		if ((ut_info->uf_info.tx_sync < QE_CLK_NONE) ||
		    (ut_info->uf_info.tx_sync > QE_TSYNC_PIN)) {
			FUNC3("QE-TDM: Invalid tx-sync-clock property\n");
		return -EINVAL;
		}
	} else {
		FUNC3("QE-TDM: Invalid tx-sync-clock property\n");
		return -EINVAL;
	}

	ret = FUNC2(np, "fsl,tx-timeslot-mask", 0, &val);
	if (ret) {
		FUNC3("QE-TDM: Invalid tx-timeslot-mask property\n");
		return -EINVAL;
	}
	utdm->tx_ts_mask = val;

	ret = FUNC2(np, "fsl,rx-timeslot-mask", 0, &val);
	if (ret) {
		ret = -EINVAL;
		FUNC3("QE-TDM: Invalid rx-timeslot-mask property\n");
		return ret;
	}
	utdm->rx_ts_mask = val;

	ret = FUNC2(np, "fsl,tdm-id", 0, &val);
	if (ret) {
		ret = -EINVAL;
		FUNC3("QE-TDM: No fsl,tdm-id property for this UCC\n");
		return ret;
	}
	utdm->tdm_port = val;
	ut_info->uf_info.tdm_num = utdm->tdm_port;

	if (FUNC1(np, "fsl,tdm-internal-loopback"))
		utdm->tdm_mode = TDM_INTERNAL_LOOPBACK;
	else
		utdm->tdm_mode = TDM_NORMAL;

	sprop = FUNC0(np, "fsl,tdm-framer-type", NULL);
	if (!sprop) {
		ret = -EINVAL;
		FUNC3("QE-TDM: No tdm-framer-type property for UCC\n");
		return ret;
	}
	ret = FUNC6(sprop);
	if (ret < 0)
		return -EINVAL;
	utdm->tdm_framer_type = ret;

	ret = FUNC2(np, "fsl,siram-entry-id", 0, &val);
	if (ret) {
		ret = -EINVAL;
		FUNC3("QE-TDM: No siram entry id for UCC\n");
		return ret;
	}
	utdm->siram_entry_id = val;

	FUNC5(utdm, ut_info);
	return ret;
}