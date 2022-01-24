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
struct wl1271 {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* KBUILD_MODNAME ; 
 int /*<<< orphan*/  accum_arp_pend_requests ; 
 int /*<<< orphan*/  adc_source_unexpected ; 
 int /*<<< orphan*/  aggr_size ; 
 int /*<<< orphan*/  ap_sleep_active_conf ; 
 int /*<<< orphan*/  ap_sleep_counter ; 
 int /*<<< orphan*/  ap_sleep_user_conf ; 
 int /*<<< orphan*/  arp_filter ; 
 int /*<<< orphan*/  bar_retry ; 
 int /*<<< orphan*/  beacon_filter ; 
 int /*<<< orphan*/  burst_mismatch ; 
 int /*<<< orphan*/  calib ; 
 int /*<<< orphan*/  calib_count ; 
 int /*<<< orphan*/  clear_fw_stats ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  connection_out_of_sync ; 
 int /*<<< orphan*/  cont_miss_bcns_spread ; 
 int /*<<< orphan*/  data_filter ; 
 struct dentry* FUNC2 (char*,struct dentry*) ; 
 int /*<<< orphan*/  dec_packet_in ; 
 int /*<<< orphan*/  dec_packet_in_fifo_full ; 
 int /*<<< orphan*/  dec_packet_out ; 
 int /*<<< orphan*/  decrypt_key_not_found ; 
 int /*<<< orphan*/  defrag_called ; 
 int /*<<< orphan*/  defrag_decrypt_failed ; 
 int /*<<< orphan*/  defrag_in_process_called ; 
 int /*<<< orphan*/  defrag_init_called ; 
 int /*<<< orphan*/  defrag_need_decrypt ; 
 int /*<<< orphan*/  defrag_need_defrag ; 
 int /*<<< orphan*/  defrag_tkip_called ; 
 int /*<<< orphan*/  defrag_to_rx_xfer_swi ; 
 int /*<<< orphan*/  dfs ; 
 int /*<<< orphan*/  diversity ; 
 int /*<<< orphan*/  dup_filter ; 
 int /*<<< orphan*/  dynamic_fw_traces ; 
 int /*<<< orphan*/  elp_while_nvic_pending ; 
 int /*<<< orphan*/  elp_while_rx_exch ; 
 int /*<<< orphan*/  elp_while_tx ; 
 int /*<<< orphan*/  elp_while_tx_exch ; 
 int /*<<< orphan*/  enc_rx_stat_fifo_int ; 
 int /*<<< orphan*/  enc_tx_stat_fifo_int ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  error_frame_ctrl ; 
 int /*<<< orphan*/  error_frame_during_protection ; 
 int /*<<< orphan*/  error_frame_non_ctrl ; 
 int /*<<< orphan*/  fail_count ; 
 int /*<<< orphan*/  false_irq ; 
 int /*<<< orphan*/  frag_bad_mblk_num ; 
 int /*<<< orphan*/  frag_cache_hit ; 
 int /*<<< orphan*/  frag_cache_miss ; 
 int /*<<< orphan*/  frag_called ; 
 int /*<<< orphan*/  frag_failed ; 
 int /*<<< orphan*/  frag_in_process_called ; 
 int /*<<< orphan*/  frag_init_called ; 
 int /*<<< orphan*/  frag_key_not_found ; 
 int /*<<< orphan*/  frag_mpdu_alloc_failed ; 
 int /*<<< orphan*/  frag_need_fragmentation ; 
 int /*<<< orphan*/  frag_tkip_called ; 
 int /*<<< orphan*/  hs_tx_stat_fifo_int ; 
 int /*<<< orphan*/  ibss_filter ; 
 int /*<<< orphan*/  irq_thr_high ; 
 int /*<<< orphan*/  irq_thr_low ; 
 int /*<<< orphan*/  irqs ; 
 int /*<<< orphan*/  isr ; 
 int /*<<< orphan*/  max_arp_queue_dep ; 
 int /*<<< orphan*/  mc_filter ; 
 int /*<<< orphan*/  missing_bcns_cnt ; 
 int /*<<< orphan*/  null_frame_cts_start ; 
 int /*<<< orphan*/  null_frame_tx_start ; 
 int /*<<< orphan*/  num_frame_cts_nul_flid ; 
 int /*<<< orphan*/  num_of_packets_per_ant ; 
 int /*<<< orphan*/  num_of_radar_detections ; 
 int /*<<< orphan*/  pipeline ; 
 int /*<<< orphan*/  pipeline_fifo_full ; 
 int /*<<< orphan*/  post_proc_swi ; 
 int /*<<< orphan*/  pre_proc_swi ; 
 int /*<<< orphan*/  pre_to_defrag_swi ; 
 int /*<<< orphan*/  protection_filter ; 
 int /*<<< orphan*/  pwr ; 
 int /*<<< orphan*/  radar_debug_mode ; 
 int /*<<< orphan*/  radar_detection ; 
 int /*<<< orphan*/  rcvd_awake_bcns_cnt ; 
 int /*<<< orphan*/  rcvd_bcns_cnt ; 
 int /*<<< orphan*/  roaming ; 
 int /*<<< orphan*/  rssi_level ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  rx_beacon_early_term ; 
 int /*<<< orphan*/  rx_cmplt ; 
 int /*<<< orphan*/  rx_cmplt_db_overflow_cnt ; 
 int /*<<< orphan*/  rx_cmplt_task ; 
 int /*<<< orphan*/  rx_complete_stat_fifo_int ; 
 int /*<<< orphan*/  rx_defrag ; 
 int /*<<< orphan*/  rx_defrag_end ; 
 int /*<<< orphan*/  rx_done ; 
 int /*<<< orphan*/  rx_dropped_frame ; 
 int /*<<< orphan*/  rx_excessive_frame_len ; 
 int /*<<< orphan*/  rx_filter ; 
 int /*<<< orphan*/  rx_frames_per_rates ; 
 int /*<<< orphan*/  rx_hdr_overflow ; 
 int /*<<< orphan*/  rx_out_of_mpdu_nodes ; 
 int /*<<< orphan*/  rx_phy_hdr ; 
 int /*<<< orphan*/  rx_pre_complt ; 
 int /*<<< orphan*/  rx_rate ; 
 int /*<<< orphan*/  rx_rts_timeout ; 
 int /*<<< orphan*/  rx_size ; 
 int /*<<< orphan*/  rx_timeout ; 
 int /*<<< orphan*/  rx_timeout_wa ; 
 int /*<<< orphan*/  rx_tkip_replays ; 
 int /*<<< orphan*/  rx_xfr ; 
 int /*<<< orphan*/  sec_frag_swi ; 
 int /*<<< orphan*/  sleep_cycle_avg ; 
 int /*<<< orphan*/  sleep_percent ; 
 int /*<<< orphan*/  sleep_time_avg ; 
 int /*<<< orphan*/  sleep_time_count ; 
 int /*<<< orphan*/  tbc_exch_mismatch ; 
 int /*<<< orphan*/  thermal ; 
 int /*<<< orphan*/  total_num_of_toggles ; 
 int /*<<< orphan*/  tx ; 
 int /*<<< orphan*/  tx_abort_failure ; 
 int /*<<< orphan*/  tx_agg_len ; 
 int /*<<< orphan*/  tx_agg_rate ; 
 int /*<<< orphan*/  tx_burst_programmed ; 
 int /*<<< orphan*/  tx_cfe1 ; 
 int /*<<< orphan*/  tx_cfe2 ; 
 int /*<<< orphan*/  tx_cmplt ; 
 int /*<<< orphan*/  tx_data_prepared ; 
 int /*<<< orphan*/  tx_data_programmed ; 
 int /*<<< orphan*/  tx_done_data ; 
 int /*<<< orphan*/  tx_done_int_template ; 
 int /*<<< orphan*/  tx_done_template ; 
 int /*<<< orphan*/  tx_exch ; 
 int /*<<< orphan*/  tx_exch_expiry ; 
 int /*<<< orphan*/  tx_exch_pending ; 
 int /*<<< orphan*/  tx_prepared_descs ; 
 int /*<<< orphan*/  tx_resume ; 
 int /*<<< orphan*/  tx_resume_failure ; 
 int /*<<< orphan*/  tx_retry_data ; 
 int /*<<< orphan*/  tx_retry_per_rate ; 
 int /*<<< orphan*/  tx_retry_template ; 
 int /*<<< orphan*/  tx_start_data ; 
 int /*<<< orphan*/  tx_start_fw_gen ; 
 int /*<<< orphan*/  tx_start_int_templates ; 
 int /*<<< orphan*/  tx_start_null_frame ; 
 int /*<<< orphan*/  tx_start_templates ; 
 int /*<<< orphan*/  tx_starts ; 
 int /*<<< orphan*/  tx_stop ; 
 int /*<<< orphan*/  tx_template_prepared ; 
 int /*<<< orphan*/  tx_template_programmed ; 

int FUNC3(struct wl1271 *wl,
			     struct dentry *rootdir)
{
	struct dentry *stats, *moddir;

	moddir = FUNC2(KBUILD_MODNAME, rootdir);
	stats = FUNC2("fw_stats", moddir);

	FUNC0(clear_fw_stats, stats);

	FUNC1(error, error_frame_non_ctrl);
	FUNC1(error, error_frame_ctrl);
	FUNC1(error, error_frame_during_protection);
	FUNC1(error, null_frame_tx_start);
	FUNC1(error, null_frame_cts_start);
	FUNC1(error, bar_retry);
	FUNC1(error, num_frame_cts_nul_flid);
	FUNC1(error, tx_abort_failure);
	FUNC1(error, tx_resume_failure);
	FUNC1(error, rx_cmplt_db_overflow_cnt);
	FUNC1(error, elp_while_rx_exch);
	FUNC1(error, elp_while_tx_exch);
	FUNC1(error, elp_while_tx);
	FUNC1(error, elp_while_nvic_pending);
	FUNC1(error, rx_excessive_frame_len);
	FUNC1(error, burst_mismatch);
	FUNC1(error, tbc_exch_mismatch);

	FUNC1(tx, tx_prepared_descs);
	FUNC1(tx, tx_cmplt);
	FUNC1(tx, tx_template_prepared);
	FUNC1(tx, tx_data_prepared);
	FUNC1(tx, tx_template_programmed);
	FUNC1(tx, tx_data_programmed);
	FUNC1(tx, tx_burst_programmed);
	FUNC1(tx, tx_starts);
	FUNC1(tx, tx_stop);
	FUNC1(tx, tx_start_templates);
	FUNC1(tx, tx_start_int_templates);
	FUNC1(tx, tx_start_fw_gen);
	FUNC1(tx, tx_start_data);
	FUNC1(tx, tx_start_null_frame);
	FUNC1(tx, tx_exch);
	FUNC1(tx, tx_retry_template);
	FUNC1(tx, tx_retry_data);
	FUNC1(tx, tx_retry_per_rate);
	FUNC1(tx, tx_exch_pending);
	FUNC1(tx, tx_exch_expiry);
	FUNC1(tx, tx_done_template);
	FUNC1(tx, tx_done_data);
	FUNC1(tx, tx_done_int_template);
	FUNC1(tx, tx_cfe1);
	FUNC1(tx, tx_cfe2);
	FUNC1(tx, frag_called);
	FUNC1(tx, frag_mpdu_alloc_failed);
	FUNC1(tx, frag_init_called);
	FUNC1(tx, frag_in_process_called);
	FUNC1(tx, frag_tkip_called);
	FUNC1(tx, frag_key_not_found);
	FUNC1(tx, frag_need_fragmentation);
	FUNC1(tx, frag_bad_mblk_num);
	FUNC1(tx, frag_failed);
	FUNC1(tx, frag_cache_hit);
	FUNC1(tx, frag_cache_miss);

	FUNC1(rx, rx_beacon_early_term);
	FUNC1(rx, rx_out_of_mpdu_nodes);
	FUNC1(rx, rx_hdr_overflow);
	FUNC1(rx, rx_dropped_frame);
	FUNC1(rx, rx_done);
	FUNC1(rx, rx_defrag);
	FUNC1(rx, rx_defrag_end);
	FUNC1(rx, rx_cmplt);
	FUNC1(rx, rx_pre_complt);
	FUNC1(rx, rx_cmplt_task);
	FUNC1(rx, rx_phy_hdr);
	FUNC1(rx, rx_timeout);
	FUNC1(rx, rx_rts_timeout);
	FUNC1(rx, rx_timeout_wa);
	FUNC1(rx, defrag_called);
	FUNC1(rx, defrag_init_called);
	FUNC1(rx, defrag_in_process_called);
	FUNC1(rx, defrag_tkip_called);
	FUNC1(rx, defrag_need_defrag);
	FUNC1(rx, defrag_decrypt_failed);
	FUNC1(rx, decrypt_key_not_found);
	FUNC1(rx, defrag_need_decrypt);
	FUNC1(rx, rx_tkip_replays);
	FUNC1(rx, rx_xfr);

	FUNC1(isr, irqs);

	FUNC1(pwr, missing_bcns_cnt);
	FUNC1(pwr, rcvd_bcns_cnt);
	FUNC1(pwr, connection_out_of_sync);
	FUNC1(pwr, cont_miss_bcns_spread);
	FUNC1(pwr, rcvd_awake_bcns_cnt);
	FUNC1(pwr, sleep_time_count);
	FUNC1(pwr, sleep_time_avg);
	FUNC1(pwr, sleep_cycle_avg);
	FUNC1(pwr, sleep_percent);
	FUNC1(pwr, ap_sleep_active_conf);
	FUNC1(pwr, ap_sleep_user_conf);
	FUNC1(pwr, ap_sleep_counter);

	FUNC1(rx_filter, beacon_filter);
	FUNC1(rx_filter, arp_filter);
	FUNC1(rx_filter, mc_filter);
	FUNC1(rx_filter, dup_filter);
	FUNC1(rx_filter, data_filter);
	FUNC1(rx_filter, ibss_filter);
	FUNC1(rx_filter, protection_filter);
	FUNC1(rx_filter, accum_arp_pend_requests);
	FUNC1(rx_filter, max_arp_queue_dep);

	FUNC1(rx_rate, rx_frames_per_rates);

	FUNC1(aggr_size, tx_agg_rate);
	FUNC1(aggr_size, tx_agg_len);
	FUNC1(aggr_size, rx_size);

	FUNC1(pipeline, hs_tx_stat_fifo_int);
	FUNC1(pipeline, enc_tx_stat_fifo_int);
	FUNC1(pipeline, enc_rx_stat_fifo_int);
	FUNC1(pipeline, rx_complete_stat_fifo_int);
	FUNC1(pipeline, pre_proc_swi);
	FUNC1(pipeline, post_proc_swi);
	FUNC1(pipeline, sec_frag_swi);
	FUNC1(pipeline, pre_to_defrag_swi);
	FUNC1(pipeline, defrag_to_rx_xfer_swi);
	FUNC1(pipeline, dec_packet_in);
	FUNC1(pipeline, dec_packet_in_fifo_full);
	FUNC1(pipeline, dec_packet_out);
	FUNC1(pipeline, pipeline_fifo_full);

	FUNC1(diversity, num_of_packets_per_ant);
	FUNC1(diversity, total_num_of_toggles);

	FUNC1(thermal, irq_thr_low);
	FUNC1(thermal, irq_thr_high);
	FUNC1(thermal, tx_stop);
	FUNC1(thermal, tx_resume);
	FUNC1(thermal, false_irq);
	FUNC1(thermal, adc_source_unexpected);

	FUNC1(calib, fail_count);

	FUNC1(calib, calib_count);

	FUNC1(roaming, rssi_level);

	FUNC1(dfs, num_of_radar_detections);

	FUNC0(conf, moddir);
	FUNC0(radar_detection, moddir);
#ifdef CONFIG_CFG80211_CERTIFICATION_ONUS
	DEBUGFS_ADD(radar_debug_mode, moddir);
#endif
	FUNC0(dynamic_fw_traces, moddir);

	return 0;
}