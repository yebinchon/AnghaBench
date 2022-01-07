
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct dwc2_hsotg* private; } ;
struct dwc2_hw_params {int dummy; } ;
struct dwc2_hsotg {struct dwc2_hw_params hw_params; } ;


 int arch ;
 int dev_ep_dirs ;
 int dev_nperio_tx_fifo_size ;
 int dev_token_q_depth ;
 int dma_desc_enable ;
 int en_multiple_tx_fifo ;
 int enable_dynamic_fifo ;
 int fs_phy_type ;
 int host_channels ;
 int host_nperio_tx_fifo_size ;
 int host_perio_tx_fifo_size ;
 int host_perio_tx_q_depth ;
 int hs_phy_type ;
 int i2c_enable ;
 int max_packet_count ;
 int max_transfer_size ;
 int nperio_tx_q_depth ;
 int num_dev_ep ;
 int num_dev_perio_in_ep ;
 int op_mode ;
 int power_optimized ;
 int print_param (struct seq_file*,struct dwc2_hw_params*,int ) ;
 int print_param_hex (struct seq_file*,struct dwc2_hw_params*,int ) ;
 int rx_fifo_size ;
 int snpsid ;
 int total_fifo_size ;
 int utmi_phy_data_width ;

__attribute__((used)) static int hw_params_show(struct seq_file *seq, void *v)
{
 struct dwc2_hsotg *hsotg = seq->private;
 struct dwc2_hw_params *hw = &hsotg->hw_params;

 print_param(seq, hw, op_mode);
 print_param(seq, hw, arch);
 print_param(seq, hw, dma_desc_enable);
 print_param(seq, hw, enable_dynamic_fifo);
 print_param(seq, hw, en_multiple_tx_fifo);
 print_param(seq, hw, rx_fifo_size);
 print_param(seq, hw, host_nperio_tx_fifo_size);
 print_param(seq, hw, dev_nperio_tx_fifo_size);
 print_param(seq, hw, host_perio_tx_fifo_size);
 print_param(seq, hw, nperio_tx_q_depth);
 print_param(seq, hw, host_perio_tx_q_depth);
 print_param(seq, hw, dev_token_q_depth);
 print_param(seq, hw, max_transfer_size);
 print_param(seq, hw, max_packet_count);
 print_param(seq, hw, host_channels);
 print_param(seq, hw, hs_phy_type);
 print_param(seq, hw, fs_phy_type);
 print_param(seq, hw, i2c_enable);
 print_param(seq, hw, num_dev_ep);
 print_param(seq, hw, num_dev_perio_in_ep);
 print_param(seq, hw, total_fifo_size);
 print_param(seq, hw, power_optimized);
 print_param(seq, hw, utmi_phy_data_width);
 print_param_hex(seq, hw, snpsid);
 print_param_hex(seq, hw, dev_ep_dirs);

 return 0;
}
