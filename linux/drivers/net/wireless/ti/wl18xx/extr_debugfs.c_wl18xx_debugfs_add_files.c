
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int dummy; } ;
struct dentry {int dummy; } ;


 int DEBUGFS_ADD (int ,struct dentry*) ;
 int DEBUGFS_FWSTATS_ADD (int ,int ) ;
 char* KBUILD_MODNAME ;
 int accum_arp_pend_requests ;
 int adc_source_unexpected ;
 int aggr_size ;
 int ap_sleep_active_conf ;
 int ap_sleep_counter ;
 int ap_sleep_user_conf ;
 int arp_filter ;
 int bar_retry ;
 int beacon_filter ;
 int burst_mismatch ;
 int calib ;
 int calib_count ;
 int clear_fw_stats ;
 int conf ;
 int connection_out_of_sync ;
 int cont_miss_bcns_spread ;
 int data_filter ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int dec_packet_in ;
 int dec_packet_in_fifo_full ;
 int dec_packet_out ;
 int decrypt_key_not_found ;
 int defrag_called ;
 int defrag_decrypt_failed ;
 int defrag_in_process_called ;
 int defrag_init_called ;
 int defrag_need_decrypt ;
 int defrag_need_defrag ;
 int defrag_tkip_called ;
 int defrag_to_rx_xfer_swi ;
 int dfs ;
 int diversity ;
 int dup_filter ;
 int dynamic_fw_traces ;
 int elp_while_nvic_pending ;
 int elp_while_rx_exch ;
 int elp_while_tx ;
 int elp_while_tx_exch ;
 int enc_rx_stat_fifo_int ;
 int enc_tx_stat_fifo_int ;
 int error ;
 int error_frame_ctrl ;
 int error_frame_during_protection ;
 int error_frame_non_ctrl ;
 int fail_count ;
 int false_irq ;
 int frag_bad_mblk_num ;
 int frag_cache_hit ;
 int frag_cache_miss ;
 int frag_called ;
 int frag_failed ;
 int frag_in_process_called ;
 int frag_init_called ;
 int frag_key_not_found ;
 int frag_mpdu_alloc_failed ;
 int frag_need_fragmentation ;
 int frag_tkip_called ;
 int hs_tx_stat_fifo_int ;
 int ibss_filter ;
 int irq_thr_high ;
 int irq_thr_low ;
 int irqs ;
 int isr ;
 int max_arp_queue_dep ;
 int mc_filter ;
 int missing_bcns_cnt ;
 int null_frame_cts_start ;
 int null_frame_tx_start ;
 int num_frame_cts_nul_flid ;
 int num_of_packets_per_ant ;
 int num_of_radar_detections ;
 int pipeline ;
 int pipeline_fifo_full ;
 int post_proc_swi ;
 int pre_proc_swi ;
 int pre_to_defrag_swi ;
 int protection_filter ;
 int pwr ;
 int radar_debug_mode ;
 int radar_detection ;
 int rcvd_awake_bcns_cnt ;
 int rcvd_bcns_cnt ;
 int roaming ;
 int rssi_level ;
 int rx ;
 int rx_beacon_early_term ;
 int rx_cmplt ;
 int rx_cmplt_db_overflow_cnt ;
 int rx_cmplt_task ;
 int rx_complete_stat_fifo_int ;
 int rx_defrag ;
 int rx_defrag_end ;
 int rx_done ;
 int rx_dropped_frame ;
 int rx_excessive_frame_len ;
 int rx_filter ;
 int rx_frames_per_rates ;
 int rx_hdr_overflow ;
 int rx_out_of_mpdu_nodes ;
 int rx_phy_hdr ;
 int rx_pre_complt ;
 int rx_rate ;
 int rx_rts_timeout ;
 int rx_size ;
 int rx_timeout ;
 int rx_timeout_wa ;
 int rx_tkip_replays ;
 int rx_xfr ;
 int sec_frag_swi ;
 int sleep_cycle_avg ;
 int sleep_percent ;
 int sleep_time_avg ;
 int sleep_time_count ;
 int tbc_exch_mismatch ;
 int thermal ;
 int total_num_of_toggles ;
 int tx ;
 int tx_abort_failure ;
 int tx_agg_len ;
 int tx_agg_rate ;
 int tx_burst_programmed ;
 int tx_cfe1 ;
 int tx_cfe2 ;
 int tx_cmplt ;
 int tx_data_prepared ;
 int tx_data_programmed ;
 int tx_done_data ;
 int tx_done_int_template ;
 int tx_done_template ;
 int tx_exch ;
 int tx_exch_expiry ;
 int tx_exch_pending ;
 int tx_prepared_descs ;
 int tx_resume ;
 int tx_resume_failure ;
 int tx_retry_data ;
 int tx_retry_per_rate ;
 int tx_retry_template ;
 int tx_start_data ;
 int tx_start_fw_gen ;
 int tx_start_int_templates ;
 int tx_start_null_frame ;
 int tx_start_templates ;
 int tx_starts ;
 int tx_stop ;
 int tx_template_prepared ;
 int tx_template_programmed ;

int wl18xx_debugfs_add_files(struct wl1271 *wl,
        struct dentry *rootdir)
{
 struct dentry *stats, *moddir;

 moddir = debugfs_create_dir(KBUILD_MODNAME, rootdir);
 stats = debugfs_create_dir("fw_stats", moddir);

 DEBUGFS_ADD(clear_fw_stats, stats);

 DEBUGFS_FWSTATS_ADD(error, error_frame_non_ctrl);
 DEBUGFS_FWSTATS_ADD(error, error_frame_ctrl);
 DEBUGFS_FWSTATS_ADD(error, error_frame_during_protection);
 DEBUGFS_FWSTATS_ADD(error, null_frame_tx_start);
 DEBUGFS_FWSTATS_ADD(error, null_frame_cts_start);
 DEBUGFS_FWSTATS_ADD(error, bar_retry);
 DEBUGFS_FWSTATS_ADD(error, num_frame_cts_nul_flid);
 DEBUGFS_FWSTATS_ADD(error, tx_abort_failure);
 DEBUGFS_FWSTATS_ADD(error, tx_resume_failure);
 DEBUGFS_FWSTATS_ADD(error, rx_cmplt_db_overflow_cnt);
 DEBUGFS_FWSTATS_ADD(error, elp_while_rx_exch);
 DEBUGFS_FWSTATS_ADD(error, elp_while_tx_exch);
 DEBUGFS_FWSTATS_ADD(error, elp_while_tx);
 DEBUGFS_FWSTATS_ADD(error, elp_while_nvic_pending);
 DEBUGFS_FWSTATS_ADD(error, rx_excessive_frame_len);
 DEBUGFS_FWSTATS_ADD(error, burst_mismatch);
 DEBUGFS_FWSTATS_ADD(error, tbc_exch_mismatch);

 DEBUGFS_FWSTATS_ADD(tx, tx_prepared_descs);
 DEBUGFS_FWSTATS_ADD(tx, tx_cmplt);
 DEBUGFS_FWSTATS_ADD(tx, tx_template_prepared);
 DEBUGFS_FWSTATS_ADD(tx, tx_data_prepared);
 DEBUGFS_FWSTATS_ADD(tx, tx_template_programmed);
 DEBUGFS_FWSTATS_ADD(tx, tx_data_programmed);
 DEBUGFS_FWSTATS_ADD(tx, tx_burst_programmed);
 DEBUGFS_FWSTATS_ADD(tx, tx_starts);
 DEBUGFS_FWSTATS_ADD(tx, tx_stop);
 DEBUGFS_FWSTATS_ADD(tx, tx_start_templates);
 DEBUGFS_FWSTATS_ADD(tx, tx_start_int_templates);
 DEBUGFS_FWSTATS_ADD(tx, tx_start_fw_gen);
 DEBUGFS_FWSTATS_ADD(tx, tx_start_data);
 DEBUGFS_FWSTATS_ADD(tx, tx_start_null_frame);
 DEBUGFS_FWSTATS_ADD(tx, tx_exch);
 DEBUGFS_FWSTATS_ADD(tx, tx_retry_template);
 DEBUGFS_FWSTATS_ADD(tx, tx_retry_data);
 DEBUGFS_FWSTATS_ADD(tx, tx_retry_per_rate);
 DEBUGFS_FWSTATS_ADD(tx, tx_exch_pending);
 DEBUGFS_FWSTATS_ADD(tx, tx_exch_expiry);
 DEBUGFS_FWSTATS_ADD(tx, tx_done_template);
 DEBUGFS_FWSTATS_ADD(tx, tx_done_data);
 DEBUGFS_FWSTATS_ADD(tx, tx_done_int_template);
 DEBUGFS_FWSTATS_ADD(tx, tx_cfe1);
 DEBUGFS_FWSTATS_ADD(tx, tx_cfe2);
 DEBUGFS_FWSTATS_ADD(tx, frag_called);
 DEBUGFS_FWSTATS_ADD(tx, frag_mpdu_alloc_failed);
 DEBUGFS_FWSTATS_ADD(tx, frag_init_called);
 DEBUGFS_FWSTATS_ADD(tx, frag_in_process_called);
 DEBUGFS_FWSTATS_ADD(tx, frag_tkip_called);
 DEBUGFS_FWSTATS_ADD(tx, frag_key_not_found);
 DEBUGFS_FWSTATS_ADD(tx, frag_need_fragmentation);
 DEBUGFS_FWSTATS_ADD(tx, frag_bad_mblk_num);
 DEBUGFS_FWSTATS_ADD(tx, frag_failed);
 DEBUGFS_FWSTATS_ADD(tx, frag_cache_hit);
 DEBUGFS_FWSTATS_ADD(tx, frag_cache_miss);

 DEBUGFS_FWSTATS_ADD(rx, rx_beacon_early_term);
 DEBUGFS_FWSTATS_ADD(rx, rx_out_of_mpdu_nodes);
 DEBUGFS_FWSTATS_ADD(rx, rx_hdr_overflow);
 DEBUGFS_FWSTATS_ADD(rx, rx_dropped_frame);
 DEBUGFS_FWSTATS_ADD(rx, rx_done);
 DEBUGFS_FWSTATS_ADD(rx, rx_defrag);
 DEBUGFS_FWSTATS_ADD(rx, rx_defrag_end);
 DEBUGFS_FWSTATS_ADD(rx, rx_cmplt);
 DEBUGFS_FWSTATS_ADD(rx, rx_pre_complt);
 DEBUGFS_FWSTATS_ADD(rx, rx_cmplt_task);
 DEBUGFS_FWSTATS_ADD(rx, rx_phy_hdr);
 DEBUGFS_FWSTATS_ADD(rx, rx_timeout);
 DEBUGFS_FWSTATS_ADD(rx, rx_rts_timeout);
 DEBUGFS_FWSTATS_ADD(rx, rx_timeout_wa);
 DEBUGFS_FWSTATS_ADD(rx, defrag_called);
 DEBUGFS_FWSTATS_ADD(rx, defrag_init_called);
 DEBUGFS_FWSTATS_ADD(rx, defrag_in_process_called);
 DEBUGFS_FWSTATS_ADD(rx, defrag_tkip_called);
 DEBUGFS_FWSTATS_ADD(rx, defrag_need_defrag);
 DEBUGFS_FWSTATS_ADD(rx, defrag_decrypt_failed);
 DEBUGFS_FWSTATS_ADD(rx, decrypt_key_not_found);
 DEBUGFS_FWSTATS_ADD(rx, defrag_need_decrypt);
 DEBUGFS_FWSTATS_ADD(rx, rx_tkip_replays);
 DEBUGFS_FWSTATS_ADD(rx, rx_xfr);

 DEBUGFS_FWSTATS_ADD(isr, irqs);

 DEBUGFS_FWSTATS_ADD(pwr, missing_bcns_cnt);
 DEBUGFS_FWSTATS_ADD(pwr, rcvd_bcns_cnt);
 DEBUGFS_FWSTATS_ADD(pwr, connection_out_of_sync);
 DEBUGFS_FWSTATS_ADD(pwr, cont_miss_bcns_spread);
 DEBUGFS_FWSTATS_ADD(pwr, rcvd_awake_bcns_cnt);
 DEBUGFS_FWSTATS_ADD(pwr, sleep_time_count);
 DEBUGFS_FWSTATS_ADD(pwr, sleep_time_avg);
 DEBUGFS_FWSTATS_ADD(pwr, sleep_cycle_avg);
 DEBUGFS_FWSTATS_ADD(pwr, sleep_percent);
 DEBUGFS_FWSTATS_ADD(pwr, ap_sleep_active_conf);
 DEBUGFS_FWSTATS_ADD(pwr, ap_sleep_user_conf);
 DEBUGFS_FWSTATS_ADD(pwr, ap_sleep_counter);

 DEBUGFS_FWSTATS_ADD(rx_filter, beacon_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, arp_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, mc_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, dup_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, data_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, ibss_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, protection_filter);
 DEBUGFS_FWSTATS_ADD(rx_filter, accum_arp_pend_requests);
 DEBUGFS_FWSTATS_ADD(rx_filter, max_arp_queue_dep);

 DEBUGFS_FWSTATS_ADD(rx_rate, rx_frames_per_rates);

 DEBUGFS_FWSTATS_ADD(aggr_size, tx_agg_rate);
 DEBUGFS_FWSTATS_ADD(aggr_size, tx_agg_len);
 DEBUGFS_FWSTATS_ADD(aggr_size, rx_size);

 DEBUGFS_FWSTATS_ADD(pipeline, hs_tx_stat_fifo_int);
 DEBUGFS_FWSTATS_ADD(pipeline, enc_tx_stat_fifo_int);
 DEBUGFS_FWSTATS_ADD(pipeline, enc_rx_stat_fifo_int);
 DEBUGFS_FWSTATS_ADD(pipeline, rx_complete_stat_fifo_int);
 DEBUGFS_FWSTATS_ADD(pipeline, pre_proc_swi);
 DEBUGFS_FWSTATS_ADD(pipeline, post_proc_swi);
 DEBUGFS_FWSTATS_ADD(pipeline, sec_frag_swi);
 DEBUGFS_FWSTATS_ADD(pipeline, pre_to_defrag_swi);
 DEBUGFS_FWSTATS_ADD(pipeline, defrag_to_rx_xfer_swi);
 DEBUGFS_FWSTATS_ADD(pipeline, dec_packet_in);
 DEBUGFS_FWSTATS_ADD(pipeline, dec_packet_in_fifo_full);
 DEBUGFS_FWSTATS_ADD(pipeline, dec_packet_out);
 DEBUGFS_FWSTATS_ADD(pipeline, pipeline_fifo_full);

 DEBUGFS_FWSTATS_ADD(diversity, num_of_packets_per_ant);
 DEBUGFS_FWSTATS_ADD(diversity, total_num_of_toggles);

 DEBUGFS_FWSTATS_ADD(thermal, irq_thr_low);
 DEBUGFS_FWSTATS_ADD(thermal, irq_thr_high);
 DEBUGFS_FWSTATS_ADD(thermal, tx_stop);
 DEBUGFS_FWSTATS_ADD(thermal, tx_resume);
 DEBUGFS_FWSTATS_ADD(thermal, false_irq);
 DEBUGFS_FWSTATS_ADD(thermal, adc_source_unexpected);

 DEBUGFS_FWSTATS_ADD(calib, fail_count);

 DEBUGFS_FWSTATS_ADD(calib, calib_count);

 DEBUGFS_FWSTATS_ADD(roaming, rssi_level);

 DEBUGFS_FWSTATS_ADD(dfs, num_of_radar_detections);

 DEBUGFS_ADD(conf, moddir);
 DEBUGFS_ADD(radar_detection, moddir);



 DEBUGFS_ADD(dynamic_fw_traces, moddir);

 return 0;
}
