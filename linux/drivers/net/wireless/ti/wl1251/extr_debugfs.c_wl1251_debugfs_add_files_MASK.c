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
struct TYPE_2__ {int /*<<< orphan*/  rootdir; } ;
struct wl1251 {TYPE_1__ debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  addr_key_count ; 
 int /*<<< orphan*/  aes ; 
 int /*<<< orphan*/  beacon_buffer_thres_host_int_trig_rx_data ; 
 int /*<<< orphan*/  calc_failure ; 
 int /*<<< orphan*/  calibration ; 
 int /*<<< orphan*/  cmd_cmplt ; 
 int /*<<< orphan*/  commands ; 
 int /*<<< orphan*/  decrypt_done ; 
 int /*<<< orphan*/  decrypt_fail ; 
 int /*<<< orphan*/  decrypt_interrupt ; 
 int /*<<< orphan*/  decrypt_packets ; 
 int /*<<< orphan*/  default_key_count ; 
 int /*<<< orphan*/  descr_host_int_trig_rx_data ; 
 int /*<<< orphan*/  disable_ps ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  dma0_done ; 
 int /*<<< orphan*/  dma1_done ; 
 int /*<<< orphan*/  dropped ; 
 int /*<<< orphan*/  elp_enter ; 
 int /*<<< orphan*/  enable_ps ; 
 int /*<<< orphan*/  encrypt_fail ; 
 int /*<<< orphan*/  encrypt_interrupt ; 
 int /*<<< orphan*/  encrypt_packets ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  excessive_retries ; 
 int /*<<< orphan*/  fcs_err ; 
 int /*<<< orphan*/  fiqs ; 
 int /*<<< orphan*/  fix_tsf_ps ; 
 int /*<<< orphan*/  hdr_overflow ; 
 int /*<<< orphan*/  heart_beat ; 
 int /*<<< orphan*/  host_acknowledges ; 
 int /*<<< orphan*/  hw_pm_mode_changes ; 
 int /*<<< orphan*/  hw_stuck ; 
 int /*<<< orphan*/  internal_desc_overflow ; 
 int /*<<< orphan*/  interrupt ; 
 int /*<<< orphan*/  irqs ; 
 int /*<<< orphan*/  isr ; 
 int /*<<< orphan*/  key_not_found ; 
 int /*<<< orphan*/  low_rssi ; 
 int /*<<< orphan*/  mic ; 
 int /*<<< orphan*/  missed_beacon_host_int_trig_rx_data ; 
 int /*<<< orphan*/  missing_bcns ; 
 int /*<<< orphan*/  oom_late ; 
 int /*<<< orphan*/  out_of_mem ; 
 int /*<<< orphan*/  packets ; 
 int /*<<< orphan*/  path_reset ; 
 int /*<<< orphan*/  pci_pm ; 
 int /*<<< orphan*/  phy_transmit_error ; 
 int /*<<< orphan*/  power_save_off ; 
 int /*<<< orphan*/  ps ; 
 int /*<<< orphan*/  ps_enter ; 
 int /*<<< orphan*/  pspoll_max_apturn ; 
 int /*<<< orphan*/  pspoll_timeouts ; 
 int /*<<< orphan*/  pspoll_utilization ; 
 int /*<<< orphan*/  pwr ; 
 int /*<<< orphan*/  rcvd_awake_beacons ; 
 int /*<<< orphan*/  rcvd_beacons ; 
 int /*<<< orphan*/  reset_counter ; 
 int /*<<< orphan*/  retry_count ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  rx_errors ; 
 int /*<<< orphan*/  rx_headers ; 
 int /*<<< orphan*/  rx_mem_empty ; 
 int /*<<< orphan*/  rx_mem_overflow ; 
 int /*<<< orphan*/  rx_mismatch ; 
 int /*<<< orphan*/  rx_pkts ; 
 int /*<<< orphan*/  rx_pool ; 
 int /*<<< orphan*/  rx_prep_beacon_drop ; 
 int /*<<< orphan*/  rx_procs ; 
 int /*<<< orphan*/  rx_rdys ; 
 int /*<<< orphan*/  rx_requested ; 
 int /*<<< orphan*/  rxpipe ; 
 int /*<<< orphan*/  tx ; 
 int /*<<< orphan*/  tx_errors ; 
 int /*<<< orphan*/  tx_exch_complete ; 
 int /*<<< orphan*/  tx_procs ; 
 int /*<<< orphan*/  tx_queue_len ; 
 int /*<<< orphan*/  tx_queue_status ; 
 int /*<<< orphan*/  tx_requested ; 
 int /*<<< orphan*/  tx_stuck ; 
 int /*<<< orphan*/  tx_with_ps ; 
 int /*<<< orphan*/  tx_without_ps ; 
 int /*<<< orphan*/  tx_xfr_host_int_trig_rx_data ; 
 int /*<<< orphan*/  upsd_max_apturn ; 
 int /*<<< orphan*/  upsd_max_sptime ; 
 int /*<<< orphan*/  upsd_timeouts ; 
 int /*<<< orphan*/  upsd_utilization ; 
 int /*<<< orphan*/  wake_on_host ; 
 int /*<<< orphan*/  wake_on_timer_exp ; 
 int /*<<< orphan*/  wakeups ; 
 int /*<<< orphan*/  wep ; 
 int /*<<< orphan*/  xfr_hint_trig ; 

__attribute__((used)) static void FUNC2(struct wl1251 *wl)
{
	FUNC1(tx, internal_desc_overflow);

	FUNC1(rx, out_of_mem);
	FUNC1(rx, hdr_overflow);
	FUNC1(rx, hw_stuck);
	FUNC1(rx, dropped);
	FUNC1(rx, fcs_err);
	FUNC1(rx, xfr_hint_trig);
	FUNC1(rx, path_reset);
	FUNC1(rx, reset_counter);

	FUNC1(dma, rx_requested);
	FUNC1(dma, rx_errors);
	FUNC1(dma, tx_requested);
	FUNC1(dma, tx_errors);

	FUNC1(isr, cmd_cmplt);
	FUNC1(isr, fiqs);
	FUNC1(isr, rx_headers);
	FUNC1(isr, rx_mem_overflow);
	FUNC1(isr, rx_rdys);
	FUNC1(isr, irqs);
	FUNC1(isr, tx_procs);
	FUNC1(isr, decrypt_done);
	FUNC1(isr, dma0_done);
	FUNC1(isr, dma1_done);
	FUNC1(isr, tx_exch_complete);
	FUNC1(isr, commands);
	FUNC1(isr, rx_procs);
	FUNC1(isr, hw_pm_mode_changes);
	FUNC1(isr, host_acknowledges);
	FUNC1(isr, pci_pm);
	FUNC1(isr, wakeups);
	FUNC1(isr, low_rssi);

	FUNC1(wep, addr_key_count);
	FUNC1(wep, default_key_count);
	/* skipping wep.reserved */
	FUNC1(wep, key_not_found);
	FUNC1(wep, decrypt_fail);
	FUNC1(wep, packets);
	FUNC1(wep, interrupt);

	FUNC1(pwr, ps_enter);
	FUNC1(pwr, elp_enter);
	FUNC1(pwr, missing_bcns);
	FUNC1(pwr, wake_on_host);
	FUNC1(pwr, wake_on_timer_exp);
	FUNC1(pwr, tx_with_ps);
	FUNC1(pwr, tx_without_ps);
	FUNC1(pwr, rcvd_beacons);
	FUNC1(pwr, power_save_off);
	FUNC1(pwr, enable_ps);
	FUNC1(pwr, disable_ps);
	FUNC1(pwr, fix_tsf_ps);
	/* skipping cont_miss_bcns_spread for now */
	FUNC1(pwr, rcvd_awake_beacons);

	FUNC1(mic, rx_pkts);
	FUNC1(mic, calc_failure);

	FUNC1(aes, encrypt_fail);
	FUNC1(aes, decrypt_fail);
	FUNC1(aes, encrypt_packets);
	FUNC1(aes, decrypt_packets);
	FUNC1(aes, encrypt_interrupt);
	FUNC1(aes, decrypt_interrupt);

	FUNC1(event, heart_beat);
	FUNC1(event, calibration);
	FUNC1(event, rx_mismatch);
	FUNC1(event, rx_mem_empty);
	FUNC1(event, rx_pool);
	FUNC1(event, oom_late);
	FUNC1(event, phy_transmit_error);
	FUNC1(event, tx_stuck);

	FUNC1(ps, pspoll_timeouts);
	FUNC1(ps, upsd_timeouts);
	FUNC1(ps, upsd_max_sptime);
	FUNC1(ps, upsd_max_apturn);
	FUNC1(ps, pspoll_max_apturn);
	FUNC1(ps, pspoll_utilization);
	FUNC1(ps, upsd_utilization);

	FUNC1(rxpipe, rx_prep_beacon_drop);
	FUNC1(rxpipe, descr_host_int_trig_rx_data);
	FUNC1(rxpipe, beacon_buffer_thres_host_int_trig_rx_data);
	FUNC1(rxpipe, missed_beacon_host_int_trig_rx_data);
	FUNC1(rxpipe, tx_xfr_host_int_trig_rx_data);

	FUNC0(tx_queue_len, wl->debugfs.rootdir);
	FUNC0(tx_queue_status, wl->debugfs.rootdir);
	FUNC0(retry_count, wl->debugfs.rootdir);
	FUNC0(excessive_retries, wl->debugfs.rootdir);
}