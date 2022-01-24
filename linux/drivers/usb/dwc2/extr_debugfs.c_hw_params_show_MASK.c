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
struct dwc2_hw_params {int dummy; } ;
struct dwc2_hsotg {struct dwc2_hw_params hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  arch ; 
 int /*<<< orphan*/  dev_ep_dirs ; 
 int /*<<< orphan*/  dev_nperio_tx_fifo_size ; 
 int /*<<< orphan*/  dev_token_q_depth ; 
 int /*<<< orphan*/  dma_desc_enable ; 
 int /*<<< orphan*/  en_multiple_tx_fifo ; 
 int /*<<< orphan*/  enable_dynamic_fifo ; 
 int /*<<< orphan*/  fs_phy_type ; 
 int /*<<< orphan*/  host_channels ; 
 int /*<<< orphan*/  host_nperio_tx_fifo_size ; 
 int /*<<< orphan*/  host_perio_tx_fifo_size ; 
 int /*<<< orphan*/  host_perio_tx_q_depth ; 
 int /*<<< orphan*/  hs_phy_type ; 
 int /*<<< orphan*/  i2c_enable ; 
 int /*<<< orphan*/  max_packet_count ; 
 int /*<<< orphan*/  max_transfer_size ; 
 int /*<<< orphan*/  nperio_tx_q_depth ; 
 int /*<<< orphan*/  num_dev_ep ; 
 int /*<<< orphan*/  num_dev_perio_in_ep ; 
 int /*<<< orphan*/  op_mode ; 
 int /*<<< orphan*/  power_optimized ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct dwc2_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct dwc2_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_fifo_size ; 
 int /*<<< orphan*/  snpsid ; 
 int /*<<< orphan*/  total_fifo_size ; 
 int /*<<< orphan*/  utmi_phy_data_width ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *v)
{
	struct dwc2_hsotg *hsotg = seq->private;
	struct dwc2_hw_params *hw = &hsotg->hw_params;

	FUNC0(seq, hw, op_mode);
	FUNC0(seq, hw, arch);
	FUNC0(seq, hw, dma_desc_enable);
	FUNC0(seq, hw, enable_dynamic_fifo);
	FUNC0(seq, hw, en_multiple_tx_fifo);
	FUNC0(seq, hw, rx_fifo_size);
	FUNC0(seq, hw, host_nperio_tx_fifo_size);
	FUNC0(seq, hw, dev_nperio_tx_fifo_size);
	FUNC0(seq, hw, host_perio_tx_fifo_size);
	FUNC0(seq, hw, nperio_tx_q_depth);
	FUNC0(seq, hw, host_perio_tx_q_depth);
	FUNC0(seq, hw, dev_token_q_depth);
	FUNC0(seq, hw, max_transfer_size);
	FUNC0(seq, hw, max_packet_count);
	FUNC0(seq, hw, host_channels);
	FUNC0(seq, hw, hs_phy_type);
	FUNC0(seq, hw, fs_phy_type);
	FUNC0(seq, hw, i2c_enable);
	FUNC0(seq, hw, num_dev_ep);
	FUNC0(seq, hw, num_dev_perio_in_ep);
	FUNC0(seq, hw, total_fifo_size);
	FUNC0(seq, hw, power_optimized);
	FUNC0(seq, hw, utmi_phy_data_width);
	FUNC1(seq, hw, snpsid);
	FUNC1(seq, hw, dev_ep_dirs);

	return 0;
}