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
struct bfa_itnim_iostats_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_itnim_iostats_s*,struct bfa_itnim_iostats_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_comps ; 
 int /*<<< orphan*/  create_comps ; 
 int /*<<< orphan*/  creates ; 
 int /*<<< orphan*/  delete_comps ; 
 int /*<<< orphan*/  deletes ; 
 int /*<<< orphan*/  fw_create ; 
 int /*<<< orphan*/  fw_delete ; 
 int /*<<< orphan*/  input_reqs ; 
 int /*<<< orphan*/  io_aborts ; 
 int /*<<< orphan*/  io_cleanups ; 
 int /*<<< orphan*/  io_comps ; 
 int /*<<< orphan*/  io_tmaborts ; 
 int /*<<< orphan*/  ioc_disabled ; 
 int /*<<< orphan*/  iocom_dif_err ; 
 int /*<<< orphan*/  iocom_hostabrts ; 
 int /*<<< orphan*/  iocom_nexus_abort ; 
 int /*<<< orphan*/  iocom_proto_err ; 
 int /*<<< orphan*/  iocom_res_free ; 
 int /*<<< orphan*/  iocom_sqer_needed ; 
 int /*<<< orphan*/  iocom_utags ; 
 int /*<<< orphan*/  iocomp_aborted ; 
 int /*<<< orphan*/  iocomp_ok ; 
 int /*<<< orphan*/  iocomp_overrun ; 
 int /*<<< orphan*/  iocomp_timedout ; 
 int /*<<< orphan*/  iocomp_underrun ; 
 int /*<<< orphan*/  no_iotags ; 
 int /*<<< orphan*/  no_tskims ; 
 int /*<<< orphan*/  offlines ; 
 int /*<<< orphan*/  onlines ; 
 int /*<<< orphan*/  output_reqs ; 
 int /*<<< orphan*/  qresumes ; 
 int /*<<< orphan*/  rd_throughput ; 
 int /*<<< orphan*/  sler_events ; 
 int /*<<< orphan*/  tm_cleanup_comps ; 
 int /*<<< orphan*/  tm_cleanups ; 
 int /*<<< orphan*/  tm_cmnds ; 
 int /*<<< orphan*/  tm_failures ; 
 int /*<<< orphan*/  tm_fw_rsps ; 
 int /*<<< orphan*/  tm_io_comps ; 
 int /*<<< orphan*/  tm_iocdowns ; 
 int /*<<< orphan*/  tm_qresumes ; 
 int /*<<< orphan*/  tm_success ; 
 int /*<<< orphan*/  total_ios ; 
 int /*<<< orphan*/  wr_throughput ; 

void
FUNC1(struct bfa_itnim_iostats_s *lstats,
		struct bfa_itnim_iostats_s *rstats)
{
	FUNC0(lstats, rstats, total_ios);
	FUNC0(lstats, rstats, qresumes);
	FUNC0(lstats, rstats, no_iotags);
	FUNC0(lstats, rstats, io_aborts);
	FUNC0(lstats, rstats, no_tskims);
	FUNC0(lstats, rstats, iocomp_ok);
	FUNC0(lstats, rstats, iocomp_underrun);
	FUNC0(lstats, rstats, iocomp_overrun);
	FUNC0(lstats, rstats, iocomp_aborted);
	FUNC0(lstats, rstats, iocomp_timedout);
	FUNC0(lstats, rstats, iocom_nexus_abort);
	FUNC0(lstats, rstats, iocom_proto_err);
	FUNC0(lstats, rstats, iocom_dif_err);
	FUNC0(lstats, rstats, iocom_sqer_needed);
	FUNC0(lstats, rstats, iocom_res_free);
	FUNC0(lstats, rstats, iocom_hostabrts);
	FUNC0(lstats, rstats, iocom_utags);
	FUNC0(lstats, rstats, io_cleanups);
	FUNC0(lstats, rstats, io_tmaborts);
	FUNC0(lstats, rstats, onlines);
	FUNC0(lstats, rstats, offlines);
	FUNC0(lstats, rstats, creates);
	FUNC0(lstats, rstats, deletes);
	FUNC0(lstats, rstats, create_comps);
	FUNC0(lstats, rstats, delete_comps);
	FUNC0(lstats, rstats, sler_events);
	FUNC0(lstats, rstats, fw_create);
	FUNC0(lstats, rstats, fw_delete);
	FUNC0(lstats, rstats, ioc_disabled);
	FUNC0(lstats, rstats, cleanup_comps);
	FUNC0(lstats, rstats, tm_cmnds);
	FUNC0(lstats, rstats, tm_fw_rsps);
	FUNC0(lstats, rstats, tm_success);
	FUNC0(lstats, rstats, tm_failures);
	FUNC0(lstats, rstats, tm_io_comps);
	FUNC0(lstats, rstats, tm_qresumes);
	FUNC0(lstats, rstats, tm_iocdowns);
	FUNC0(lstats, rstats, tm_cleanups);
	FUNC0(lstats, rstats, tm_cleanup_comps);
	FUNC0(lstats, rstats, io_comps);
	FUNC0(lstats, rstats, input_reqs);
	FUNC0(lstats, rstats, output_reqs);
	FUNC0(lstats, rstats, rd_throughput);
	FUNC0(lstats, rstats, wr_throughput);
}