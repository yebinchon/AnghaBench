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
struct fc_host_statistics {int /*<<< orphan*/  fcp_output_megabytes; int /*<<< orphan*/  fcp_input_megabytes; int /*<<< orphan*/  fcp_control_requests; int /*<<< orphan*/  fcp_output_requests; int /*<<< orphan*/  fcp_input_requests; int /*<<< orphan*/  invalid_crc_count; int /*<<< orphan*/  invalid_tx_word_count; int /*<<< orphan*/  prim_seq_protocol_err_count; int /*<<< orphan*/  loss_of_signal_count; int /*<<< orphan*/  loss_of_sync_count; int /*<<< orphan*/  link_failure_count; int /*<<< orphan*/  dumped_frames; int /*<<< orphan*/  error_frames; int /*<<< orphan*/  nos_count; int /*<<< orphan*/  lip_count; int /*<<< orphan*/  rx_words; int /*<<< orphan*/  rx_frames; int /*<<< orphan*/  tx_words; int /*<<< orphan*/  tx_frames; int /*<<< orphan*/  seconds_since_last_reset; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_NOTICE ; 

void FUNC1(struct Scsi_Host *host,
				struct fc_host_statistics *stats)
{
	FUNC0(KERN_NOTICE, host,
			"fnic: seconds since last reset = %llu\n",
			stats->seconds_since_last_reset);
	FUNC0(KERN_NOTICE, host,
			"fnic: tx frames		= %llu\n",
			stats->tx_frames);
	FUNC0(KERN_NOTICE, host,
			"fnic: tx words		= %llu\n",
			stats->tx_words);
	FUNC0(KERN_NOTICE, host,
			"fnic: rx frames		= %llu\n",
			stats->rx_frames);
	FUNC0(KERN_NOTICE, host,
			"fnic: rx words		= %llu\n",
			stats->rx_words);
	FUNC0(KERN_NOTICE, host,
			"fnic: lip count		= %llu\n",
			stats->lip_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: nos count		= %llu\n",
			stats->nos_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: error frames		= %llu\n",
			stats->error_frames);
	FUNC0(KERN_NOTICE, host,
			"fnic: dumped frames	= %llu\n",
			stats->dumped_frames);
	FUNC0(KERN_NOTICE, host,
			"fnic: link failure count	= %llu\n",
			stats->link_failure_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: loss of sync count	= %llu\n",
			stats->loss_of_sync_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: loss of signal count	= %llu\n",
			stats->loss_of_signal_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: prim seq protocol err count = %llu\n",
			stats->prim_seq_protocol_err_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: invalid tx word count= %llu\n",
			stats->invalid_tx_word_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: invalid crc count	= %llu\n",
			stats->invalid_crc_count);
	FUNC0(KERN_NOTICE, host,
			"fnic: fcp input requests	= %llu\n",
			stats->fcp_input_requests);
	FUNC0(KERN_NOTICE, host,
			"fnic: fcp output requests	= %llu\n",
			stats->fcp_output_requests);
	FUNC0(KERN_NOTICE, host,
			"fnic: fcp control requests	= %llu\n",
			stats->fcp_control_requests);
	FUNC0(KERN_NOTICE, host,
			"fnic: fcp input megabytes	= %llu\n",
			stats->fcp_input_megabytes);
	FUNC0(KERN_NOTICE, host,
			"fnic: fcp output megabytes	= %llu\n",
			stats->fcp_output_megabytes);
	return;
}