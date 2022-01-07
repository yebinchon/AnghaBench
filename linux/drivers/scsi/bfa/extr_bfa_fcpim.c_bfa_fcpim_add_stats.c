
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_itnim_iostats_s {int dummy; } ;


 int bfa_fcpim_add_iostats (struct bfa_itnim_iostats_s*,struct bfa_itnim_iostats_s*,int ) ;
 int cleanup_comps ;
 int create_comps ;
 int creates ;
 int delete_comps ;
 int deletes ;
 int fw_create ;
 int fw_delete ;
 int input_reqs ;
 int io_aborts ;
 int io_cleanups ;
 int io_comps ;
 int io_tmaborts ;
 int ioc_disabled ;
 int iocom_dif_err ;
 int iocom_hostabrts ;
 int iocom_nexus_abort ;
 int iocom_proto_err ;
 int iocom_res_free ;
 int iocom_sqer_needed ;
 int iocom_utags ;
 int iocomp_aborted ;
 int iocomp_ok ;
 int iocomp_overrun ;
 int iocomp_timedout ;
 int iocomp_underrun ;
 int no_iotags ;
 int no_tskims ;
 int offlines ;
 int onlines ;
 int output_reqs ;
 int qresumes ;
 int rd_throughput ;
 int sler_events ;
 int tm_cleanup_comps ;
 int tm_cleanups ;
 int tm_cmnds ;
 int tm_failures ;
 int tm_fw_rsps ;
 int tm_io_comps ;
 int tm_iocdowns ;
 int tm_qresumes ;
 int tm_success ;
 int total_ios ;
 int wr_throughput ;

void
bfa_fcpim_add_stats(struct bfa_itnim_iostats_s *lstats,
  struct bfa_itnim_iostats_s *rstats)
{
 bfa_fcpim_add_iostats(lstats, rstats, total_ios);
 bfa_fcpim_add_iostats(lstats, rstats, qresumes);
 bfa_fcpim_add_iostats(lstats, rstats, no_iotags);
 bfa_fcpim_add_iostats(lstats, rstats, io_aborts);
 bfa_fcpim_add_iostats(lstats, rstats, no_tskims);
 bfa_fcpim_add_iostats(lstats, rstats, iocomp_ok);
 bfa_fcpim_add_iostats(lstats, rstats, iocomp_underrun);
 bfa_fcpim_add_iostats(lstats, rstats, iocomp_overrun);
 bfa_fcpim_add_iostats(lstats, rstats, iocomp_aborted);
 bfa_fcpim_add_iostats(lstats, rstats, iocomp_timedout);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_nexus_abort);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_proto_err);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_dif_err);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_sqer_needed);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_res_free);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_hostabrts);
 bfa_fcpim_add_iostats(lstats, rstats, iocom_utags);
 bfa_fcpim_add_iostats(lstats, rstats, io_cleanups);
 bfa_fcpim_add_iostats(lstats, rstats, io_tmaborts);
 bfa_fcpim_add_iostats(lstats, rstats, onlines);
 bfa_fcpim_add_iostats(lstats, rstats, offlines);
 bfa_fcpim_add_iostats(lstats, rstats, creates);
 bfa_fcpim_add_iostats(lstats, rstats, deletes);
 bfa_fcpim_add_iostats(lstats, rstats, create_comps);
 bfa_fcpim_add_iostats(lstats, rstats, delete_comps);
 bfa_fcpim_add_iostats(lstats, rstats, sler_events);
 bfa_fcpim_add_iostats(lstats, rstats, fw_create);
 bfa_fcpim_add_iostats(lstats, rstats, fw_delete);
 bfa_fcpim_add_iostats(lstats, rstats, ioc_disabled);
 bfa_fcpim_add_iostats(lstats, rstats, cleanup_comps);
 bfa_fcpim_add_iostats(lstats, rstats, tm_cmnds);
 bfa_fcpim_add_iostats(lstats, rstats, tm_fw_rsps);
 bfa_fcpim_add_iostats(lstats, rstats, tm_success);
 bfa_fcpim_add_iostats(lstats, rstats, tm_failures);
 bfa_fcpim_add_iostats(lstats, rstats, tm_io_comps);
 bfa_fcpim_add_iostats(lstats, rstats, tm_qresumes);
 bfa_fcpim_add_iostats(lstats, rstats, tm_iocdowns);
 bfa_fcpim_add_iostats(lstats, rstats, tm_cleanups);
 bfa_fcpim_add_iostats(lstats, rstats, tm_cleanup_comps);
 bfa_fcpim_add_iostats(lstats, rstats, io_comps);
 bfa_fcpim_add_iostats(lstats, rstats, input_reqs);
 bfa_fcpim_add_iostats(lstats, rstats, output_reqs);
 bfa_fcpim_add_iostats(lstats, rstats, rd_throughput);
 bfa_fcpim_add_iostats(lstats, rstats, wr_throughput);
}
