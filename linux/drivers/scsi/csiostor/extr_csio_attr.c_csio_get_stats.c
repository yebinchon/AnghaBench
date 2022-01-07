
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct fw_fcoe_port_stats {int rx_err_frames; int rx_ucast_bytes; int rx_mcast_bytes; int rx_bcast_bytes; int rx_ucast_frames; int rx_mcast_frames; int rx_bcast_frames; int tx_offload_bytes; int tx_ucast_bytes; int tx_mcast_bytes; int tx_bcast_bytes; int tx_offload_frames; int tx_ucast_frames; int tx_mcast_frames; int tx_bcast_frames; } ;
struct fc_host_statistics {int tx_frames; int tx_words; int rx_frames; int rx_words; int error_frames; int fcp_input_megabytes; int fcp_output_megabytes; scalar_t__ seconds_since_last_reset; int link_failure_count; int fcp_control_requests; int fcp_output_requests; int fcp_input_requests; } ;
struct TYPE_3__ {int n_input_bytes; int n_output_bytes; int n_link_down; scalar_t__ n_control_requests; scalar_t__ n_output_requests; scalar_t__ n_input_requests; } ;
struct csio_lnode {TYPE_1__ stats; int portid; struct fc_host_statistics fch_stats; } ;
struct TYPE_4__ {scalar_t__ n_reset_start; } ;
struct csio_hw {TYPE_2__ stats; } ;
struct Scsi_Host {int dummy; } ;


 int CSIO_WORD_TO_BYTE ;
 int be64_to_cpu (int ) ;
 int csio_get_phy_port_stats (struct csio_hw*,int ,struct fw_fcoe_port_stats*) ;
 struct csio_hw* csio_lnode_to_hw (struct csio_lnode*) ;
 int do_div (scalar_t__,int) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;
 int memset (struct fw_fcoe_port_stats*,int ,int) ;
 struct csio_lnode* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static struct fc_host_statistics *
csio_get_stats(struct Scsi_Host *shost)
{
 struct csio_lnode *ln = shost_priv(shost);
 struct csio_hw *hw = csio_lnode_to_hw(ln);
 struct fc_host_statistics *fhs = &ln->fch_stats;
 struct fw_fcoe_port_stats fcoe_port_stats;
 uint64_t seconds;

 memset(&fcoe_port_stats, 0, sizeof(struct fw_fcoe_port_stats));
 csio_get_phy_port_stats(hw, ln->portid, &fcoe_port_stats);

 fhs->tx_frames += (be64_to_cpu(fcoe_port_stats.tx_bcast_frames) +
       be64_to_cpu(fcoe_port_stats.tx_mcast_frames) +
       be64_to_cpu(fcoe_port_stats.tx_ucast_frames) +
       be64_to_cpu(fcoe_port_stats.tx_offload_frames));
 fhs->tx_words += (be64_to_cpu(fcoe_port_stats.tx_bcast_bytes) +
      be64_to_cpu(fcoe_port_stats.tx_mcast_bytes) +
      be64_to_cpu(fcoe_port_stats.tx_ucast_bytes) +
      be64_to_cpu(fcoe_port_stats.tx_offload_bytes)) /
       CSIO_WORD_TO_BYTE;
 fhs->rx_frames += (be64_to_cpu(fcoe_port_stats.rx_bcast_frames) +
      be64_to_cpu(fcoe_port_stats.rx_mcast_frames) +
      be64_to_cpu(fcoe_port_stats.rx_ucast_frames));
 fhs->rx_words += (be64_to_cpu(fcoe_port_stats.rx_bcast_bytes) +
     be64_to_cpu(fcoe_port_stats.rx_mcast_bytes) +
     be64_to_cpu(fcoe_port_stats.rx_ucast_bytes)) /
       CSIO_WORD_TO_BYTE;
 fhs->error_frames += be64_to_cpu(fcoe_port_stats.rx_err_frames);
 fhs->fcp_input_requests += ln->stats.n_input_requests;
 fhs->fcp_output_requests += ln->stats.n_output_requests;
 fhs->fcp_control_requests += ln->stats.n_control_requests;
 fhs->fcp_input_megabytes += ln->stats.n_input_bytes >> 20;
 fhs->fcp_output_megabytes += ln->stats.n_output_bytes >> 20;
 fhs->link_failure_count = ln->stats.n_link_down;

 seconds = jiffies_to_msecs(jiffies) - hw->stats.n_reset_start;
 do_div(seconds, 1000);
 fhs->seconds_since_last_reset = seconds;

 return fhs;
}
