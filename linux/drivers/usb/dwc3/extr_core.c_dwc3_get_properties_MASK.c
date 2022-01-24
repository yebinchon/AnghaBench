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
typedef  void* u8 ;
struct dwc3 {scalar_t__ imod_interval; void* tx_max_burst_prd; void* tx_thr_num_pkt_prd; void* rx_max_burst_prd; void* rx_thr_num_pkt_prd; void* hird_threshold; void* tx_de_emphasis; void* lpm_nyet_threshold; void* dis_metastability_quirk; int /*<<< orphan*/  fladj; int /*<<< orphan*/  hsphy_interface; void* tx_de_emphasis_quirk; void* dis_tx_ipgap_linecheck_quirk; void* dis_del_phy_power_chg_quirk; void* dis_u2_freeclk_exists_quirk; void* dis_rxdet_inp3_quirk; void* dis_u2_entry_quirk; void* dis_u1_entry_quirk; void* dis_enblslpm_quirk; void* dis_u2_susphy_quirk; void* dis_u3_susphy_quirk; void* rx_detect_poll_quirk; void* lfps_filter_quirk; void* del_phy_power_chg_quirk; void* del_p1p2p3_quirk; void* req_p1p2p3_quirk; void* u2ss_inp3_quirk; void* u2exit_lfps_quirk; void* disable_scramble_quirk; void* usb2_lpm_disable; void* usb3_lpm_capable; void* dis_start_transfer_quirk; void* is_utmi_l1_suspend; void* has_lpm_erratum; struct device* dev; struct device* sysdev; void* sysdev_is_parent; int /*<<< orphan*/  hsphy_mode; int /*<<< orphan*/  dr_mode; int /*<<< orphan*/  maximum_speed; } ;
struct device {struct device* parent; int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 void* FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct dwc3 *dwc)
{
	struct device		*dev = dwc->dev;
	u8			lpm_nyet_threshold;
	u8			tx_de_emphasis;
	u8			hird_threshold;
	u8			rx_thr_num_pkt_prd;
	u8			rx_max_burst_prd;
	u8			tx_thr_num_pkt_prd;
	u8			tx_max_burst_prd;

	/* default to highest possible threshold */
	lpm_nyet_threshold = 0xf;

	/* default to -3.5dB de-emphasis */
	tx_de_emphasis = 1;

	/*
	 * default to assert utmi_sleep_n and use maximum allowed HIRD
	 * threshold value of 0b1100
	 */
	hird_threshold = 12;

	dwc->maximum_speed = FUNC6(dev);
	dwc->dr_mode = FUNC5(dev);
	dwc->hsphy_mode = FUNC4(dev->of_node);

	dwc->sysdev_is_parent = FUNC0(dev,
				"linux,sysdev_is_parent");
	if (dwc->sysdev_is_parent)
		dwc->sysdev = dwc->dev->parent;
	else
		dwc->sysdev = dwc->dev;

	dwc->has_lpm_erratum = FUNC0(dev,
				"snps,has-lpm-erratum");
	FUNC3(dev, "snps,lpm-nyet-threshold",
				&lpm_nyet_threshold);
	dwc->is_utmi_l1_suspend = FUNC0(dev,
				"snps,is-utmi-l1-suspend");
	FUNC3(dev, "snps,hird-threshold",
				&hird_threshold);
	dwc->dis_start_transfer_quirk = FUNC0(dev,
				"snps,dis-start-transfer-quirk");
	dwc->usb3_lpm_capable = FUNC0(dev,
				"snps,usb3_lpm_capable");
	dwc->usb2_lpm_disable = FUNC0(dev,
				"snps,usb2-lpm-disable");
	FUNC3(dev, "snps,rx-thr-num-pkt-prd",
				&rx_thr_num_pkt_prd);
	FUNC3(dev, "snps,rx-max-burst-prd",
				&rx_max_burst_prd);
	FUNC3(dev, "snps,tx-thr-num-pkt-prd",
				&tx_thr_num_pkt_prd);
	FUNC3(dev, "snps,tx-max-burst-prd",
				&tx_max_burst_prd);

	dwc->disable_scramble_quirk = FUNC0(dev,
				"snps,disable_scramble_quirk");
	dwc->u2exit_lfps_quirk = FUNC0(dev,
				"snps,u2exit_lfps_quirk");
	dwc->u2ss_inp3_quirk = FUNC0(dev,
				"snps,u2ss_inp3_quirk");
	dwc->req_p1p2p3_quirk = FUNC0(dev,
				"snps,req_p1p2p3_quirk");
	dwc->del_p1p2p3_quirk = FUNC0(dev,
				"snps,del_p1p2p3_quirk");
	dwc->del_phy_power_chg_quirk = FUNC0(dev,
				"snps,del_phy_power_chg_quirk");
	dwc->lfps_filter_quirk = FUNC0(dev,
				"snps,lfps_filter_quirk");
	dwc->rx_detect_poll_quirk = FUNC0(dev,
				"snps,rx_detect_poll_quirk");
	dwc->dis_u3_susphy_quirk = FUNC0(dev,
				"snps,dis_u3_susphy_quirk");
	dwc->dis_u2_susphy_quirk = FUNC0(dev,
				"snps,dis_u2_susphy_quirk");
	dwc->dis_enblslpm_quirk = FUNC0(dev,
				"snps,dis_enblslpm_quirk");
	dwc->dis_u1_entry_quirk = FUNC0(dev,
				"snps,dis-u1-entry-quirk");
	dwc->dis_u2_entry_quirk = FUNC0(dev,
				"snps,dis-u2-entry-quirk");
	dwc->dis_rxdet_inp3_quirk = FUNC0(dev,
				"snps,dis_rxdet_inp3_quirk");
	dwc->dis_u2_freeclk_exists_quirk = FUNC0(dev,
				"snps,dis-u2-freeclk-exists-quirk");
	dwc->dis_del_phy_power_chg_quirk = FUNC0(dev,
				"snps,dis-del-phy-power-chg-quirk");
	dwc->dis_tx_ipgap_linecheck_quirk = FUNC0(dev,
				"snps,dis-tx-ipgap-linecheck-quirk");

	dwc->tx_de_emphasis_quirk = FUNC0(dev,
				"snps,tx_de_emphasis_quirk");
	FUNC3(dev, "snps,tx_de_emphasis",
				&tx_de_emphasis);
	FUNC1(dev, "snps,hsphy_interface",
				    &dwc->hsphy_interface);
	FUNC2(dev, "snps,quirk-frame-length-adjustment",
				 &dwc->fladj);

	dwc->dis_metastability_quirk = FUNC0(dev,
				"snps,dis_metastability_quirk");

	dwc->lpm_nyet_threshold = lpm_nyet_threshold;
	dwc->tx_de_emphasis = tx_de_emphasis;

	dwc->hird_threshold = hird_threshold;

	dwc->rx_thr_num_pkt_prd = rx_thr_num_pkt_prd;
	dwc->rx_max_burst_prd = rx_max_burst_prd;

	dwc->tx_thr_num_pkt_prd = tx_thr_num_pkt_prd;
	dwc->tx_max_burst_prd = tx_max_burst_prd;

	dwc->imod_interval = 0;
}