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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* KBUILD_MODNAME ; 
 int /*<<< orphan*/  addr_key_count ; 
 int /*<<< orphan*/  aes ; 
 int /*<<< orphan*/  beacon_buffer_thres_host_int_trig_rx_data ; 
 int /*<<< orphan*/  calc_failure ; 
 int /*<<< orphan*/  calibration ; 
 int /*<<< orphan*/  cmd_cmplt ; 
 int /*<<< orphan*/  commands ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
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

int FUNC2(struct wl1271 *wl,
			     struct dentry *rootdir)
{
	struct dentry *stats, *moddir;

	moddir = FUNC1(KBUILD_MODNAME, rootdir);
	stats = FUNC1("fw_stats", moddir);

	FUNC0(tx, internal_desc_overflow);

	FUNC0(rx, out_of_mem);
	FUNC0(rx, hdr_overflow);
	FUNC0(rx, hw_stuck);
	FUNC0(rx, dropped);
	FUNC0(rx, fcs_err);
	FUNC0(rx, xfr_hint_trig);
	FUNC0(rx, path_reset);
	FUNC0(rx, reset_counter);

	FUNC0(dma, rx_requested);
	FUNC0(dma, rx_errors);
	FUNC0(dma, tx_requested);
	FUNC0(dma, tx_errors);

	FUNC0(isr, cmd_cmplt);
	FUNC0(isr, fiqs);
	FUNC0(isr, rx_headers);
	FUNC0(isr, rx_mem_overflow);
	FUNC0(isr, rx_rdys);
	FUNC0(isr, irqs);
	FUNC0(isr, tx_procs);
	FUNC0(isr, decrypt_done);
	FUNC0(isr, dma0_done);
	FUNC0(isr, dma1_done);
	FUNC0(isr, tx_exch_complete);
	FUNC0(isr, commands);
	FUNC0(isr, rx_procs);
	FUNC0(isr, hw_pm_mode_changes);
	FUNC0(isr, host_acknowledges);
	FUNC0(isr, pci_pm);
	FUNC0(isr, wakeups);
	FUNC0(isr, low_rssi);

	FUNC0(wep, addr_key_count);
	FUNC0(wep, default_key_count);
	/* skipping wep.reserved */
	FUNC0(wep, key_not_found);
	FUNC0(wep, decrypt_fail);
	FUNC0(wep, packets);
	FUNC0(wep, interrupt);

	FUNC0(pwr, ps_enter);
	FUNC0(pwr, elp_enter);
	FUNC0(pwr, missing_bcns);
	FUNC0(pwr, wake_on_host);
	FUNC0(pwr, wake_on_timer_exp);
	FUNC0(pwr, tx_with_ps);
	FUNC0(pwr, tx_without_ps);
	FUNC0(pwr, rcvd_beacons);
	FUNC0(pwr, power_save_off);
	FUNC0(pwr, enable_ps);
	FUNC0(pwr, disable_ps);
	FUNC0(pwr, fix_tsf_ps);
	/* skipping cont_miss_bcns_spread for now */
	FUNC0(pwr, rcvd_awake_beacons);

	FUNC0(mic, rx_pkts);
	FUNC0(mic, calc_failure);

	FUNC0(aes, encrypt_fail);
	FUNC0(aes, decrypt_fail);
	FUNC0(aes, encrypt_packets);
	FUNC0(aes, decrypt_packets);
	FUNC0(aes, encrypt_interrupt);
	FUNC0(aes, decrypt_interrupt);

	FUNC0(event, heart_beat);
	FUNC0(event, calibration);
	FUNC0(event, rx_mismatch);
	FUNC0(event, rx_mem_empty);
	FUNC0(event, rx_pool);
	FUNC0(event, oom_late);
	FUNC0(event, phy_transmit_error);
	FUNC0(event, tx_stuck);

	FUNC0(ps, pspoll_timeouts);
	FUNC0(ps, upsd_timeouts);
	FUNC0(ps, upsd_max_sptime);
	FUNC0(ps, upsd_max_apturn);
	FUNC0(ps, pspoll_max_apturn);
	FUNC0(ps, pspoll_utilization);
	FUNC0(ps, upsd_utilization);

	FUNC0(rxpipe, rx_prep_beacon_drop);
	FUNC0(rxpipe, descr_host_int_trig_rx_data);
	FUNC0(rxpipe, beacon_buffer_thres_host_int_trig_rx_data);
	FUNC0(rxpipe, missed_beacon_host_int_trig_rx_data);
	FUNC0(rxpipe, tx_xfr_host_int_trig_rx_data);

	return 0;
}