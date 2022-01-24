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
struct sdw_transport_params {int port_num; int blk_grp_ctrl; int blk_pkg_mode; int offset1; int offset2; int hstart; int hstop; int lane_ctrl; int sample_interval; } ;
struct sdw_cdns {int dummy; } ;
struct sdw_bus {int dummy; } ;
typedef  enum sdw_reg_bank { ____Placeholder_sdw_reg_bank } sdw_reg_bank ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  CDNS_DPN_CONFIG_BGC ; 
 int /*<<< orphan*/  CDNS_DPN_CONFIG_BPM ; 
 int /*<<< orphan*/  CDNS_DPN_HCTRL_HSTART ; 
 int /*<<< orphan*/  CDNS_DPN_HCTRL_HSTOP ; 
 int /*<<< orphan*/  CDNS_DPN_HCTRL_LCTRL ; 
 int /*<<< orphan*/  CDNS_DPN_OFFSET_CTRL_1 ; 
 int /*<<< orphan*/  CDNS_DPN_OFFSET_CTRL_2 ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct sdw_cdns* FUNC9 (struct sdw_bus*) ; 
 int FUNC10 (struct sdw_cdns*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sdw_cdns*,int,int) ; 

__attribute__((used)) static int FUNC12(struct sdw_bus *bus,
				 struct sdw_transport_params *t_params,
				 enum sdw_reg_bank bank)
{
	struct sdw_cdns *cdns = FUNC9(bus);
	int dpn_offsetctrl = 0, dpn_offsetctrl_off;
	int dpn_config = 0, dpn_config_off;
	int dpn_hctrl = 0, dpn_hctrl_off;
	int num = t_params->port_num;
	int dpn_samplectrl_off;

	/*
	 * Note: Only full data port is supported on the Master side for
	 * both PCM and PDM ports.
	 */

	if (bank) {
		dpn_config_off = FUNC4(num);
		dpn_samplectrl_off = FUNC7(num);
		dpn_hctrl_off = FUNC5(num);
		dpn_offsetctrl_off = FUNC6(num);
	} else {
		dpn_config_off = FUNC0(num);
		dpn_samplectrl_off = FUNC3(num);
		dpn_hctrl_off = FUNC1(num);
		dpn_offsetctrl_off = FUNC2(num);
	}

	dpn_config = FUNC10(cdns, dpn_config_off);

	dpn_config |= (t_params->blk_grp_ctrl <<
				FUNC8(CDNS_DPN_CONFIG_BGC));
	dpn_config |= (t_params->blk_pkg_mode <<
				FUNC8(CDNS_DPN_CONFIG_BPM));
	FUNC11(cdns, dpn_config_off, dpn_config);

	dpn_offsetctrl |= (t_params->offset1 <<
				FUNC8(CDNS_DPN_OFFSET_CTRL_1));
	dpn_offsetctrl |= (t_params->offset2 <<
				FUNC8(CDNS_DPN_OFFSET_CTRL_2));
	FUNC11(cdns, dpn_offsetctrl_off,  dpn_offsetctrl);

	dpn_hctrl |= (t_params->hstart <<
				FUNC8(CDNS_DPN_HCTRL_HSTART));
	dpn_hctrl |= (t_params->hstop << FUNC8(CDNS_DPN_HCTRL_HSTOP));
	dpn_hctrl |= (t_params->lane_ctrl <<
				FUNC8(CDNS_DPN_HCTRL_LCTRL));

	FUNC11(cdns, dpn_hctrl_off, dpn_hctrl);
	FUNC11(cdns, dpn_samplectrl_off, (t_params->sample_interval - 1));

	return 0;
}