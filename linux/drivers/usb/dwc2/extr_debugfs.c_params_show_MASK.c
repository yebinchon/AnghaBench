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
struct seq_file {struct dwc2_hsotg* private; } ;
struct dwc2_core_params {int /*<<< orphan*/ * g_tx_fifo_size; } ;
struct dwc2_hsotg {struct dwc2_core_params params; } ;

/* Variables and functions */
 int MAX_EPS_CHANNELS ; 
 int /*<<< orphan*/  ahbcfg ; 
 int /*<<< orphan*/  besl ; 
 int /*<<< orphan*/  dma_desc_enable ; 
 int /*<<< orphan*/  dma_desc_fs_enable ; 
 int /*<<< orphan*/  en_multiple_tx_fifo ; 
 int /*<<< orphan*/  enable_dynamic_fifo ; 
 int /*<<< orphan*/  external_id_pin_ctl ; 
 int /*<<< orphan*/  g_dma ; 
 int /*<<< orphan*/  g_dma_desc ; 
 int /*<<< orphan*/  g_np_tx_fifo_size ; 
 int /*<<< orphan*/  g_rx_fifo_size ; 
 int /*<<< orphan*/  hird_threshold ; 
 int /*<<< orphan*/  hird_threshold_en ; 
 int /*<<< orphan*/  host_channels ; 
 int /*<<< orphan*/  host_dma ; 
 int /*<<< orphan*/  host_ls_low_power_phy_clk ; 
 int /*<<< orphan*/  host_nperio_tx_fifo_size ; 
 int /*<<< orphan*/  host_perio_tx_fifo_size ; 
 int /*<<< orphan*/  host_rx_fifo_size ; 
 int /*<<< orphan*/  host_support_fs_ls_low_power ; 
 int /*<<< orphan*/  i2c_enable ; 
 int /*<<< orphan*/  ipg_isoc_en ; 
 int /*<<< orphan*/  lpm ; 
 int /*<<< orphan*/  lpm_clock_gating ; 
 int /*<<< orphan*/  max_packet_count ; 
 int /*<<< orphan*/  max_transfer_size ; 
 int /*<<< orphan*/  otg_cap ; 
 int /*<<< orphan*/  phy_type ; 
 int /*<<< orphan*/  phy_ulpi_ddr ; 
 int /*<<< orphan*/  phy_ulpi_ext_vbus ; 
 int /*<<< orphan*/  phy_utmi_width ; 
 int /*<<< orphan*/  power_down ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct dwc2_core_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct dwc2_core_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reload_ctl ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  service_interval ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  speed ; 
 int /*<<< orphan*/  ts_dline ; 
 int /*<<< orphan*/  uframe_sched ; 
 int /*<<< orphan*/  ulpi_fs_ls ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	struct dwc2_hsotg *hsotg = seq->private;
	struct dwc2_core_params *p = &hsotg->params;
	int i;

	FUNC0(seq, p, otg_cap);
	FUNC0(seq, p, dma_desc_enable);
	FUNC0(seq, p, dma_desc_fs_enable);
	FUNC0(seq, p, speed);
	FUNC0(seq, p, enable_dynamic_fifo);
	FUNC0(seq, p, en_multiple_tx_fifo);
	FUNC0(seq, p, host_rx_fifo_size);
	FUNC0(seq, p, host_nperio_tx_fifo_size);
	FUNC0(seq, p, host_perio_tx_fifo_size);
	FUNC0(seq, p, max_transfer_size);
	FUNC0(seq, p, max_packet_count);
	FUNC0(seq, p, host_channels);
	FUNC0(seq, p, phy_type);
	FUNC0(seq, p, phy_utmi_width);
	FUNC0(seq, p, phy_ulpi_ddr);
	FUNC0(seq, p, phy_ulpi_ext_vbus);
	FUNC0(seq, p, i2c_enable);
	FUNC0(seq, p, ipg_isoc_en);
	FUNC0(seq, p, ulpi_fs_ls);
	FUNC0(seq, p, host_support_fs_ls_low_power);
	FUNC0(seq, p, host_ls_low_power_phy_clk);
	FUNC0(seq, p, ts_dline);
	FUNC0(seq, p, reload_ctl);
	FUNC1(seq, p, ahbcfg);
	FUNC0(seq, p, uframe_sched);
	FUNC0(seq, p, external_id_pin_ctl);
	FUNC0(seq, p, power_down);
	FUNC0(seq, p, lpm);
	FUNC0(seq, p, lpm_clock_gating);
	FUNC0(seq, p, besl);
	FUNC0(seq, p, hird_threshold_en);
	FUNC0(seq, p, hird_threshold);
	FUNC0(seq, p, service_interval);
	FUNC0(seq, p, host_dma);
	FUNC0(seq, p, g_dma);
	FUNC0(seq, p, g_dma_desc);
	FUNC0(seq, p, g_rx_fifo_size);
	FUNC0(seq, p, g_np_tx_fifo_size);

	for (i = 0; i < MAX_EPS_CHANNELS; i++) {
		char str[32];

		FUNC3(str, 32, "g_tx_fifo_size[%d]", i);
		FUNC2(seq, "%-30s: %d\n", str, p->g_tx_fifo_size[i]);
	}

	return 0;
}