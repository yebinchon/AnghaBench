
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_vport {int dummy; } ;
struct fc_lport {int service_params; int e_d_tov; int r_a_tov; int does_npiv; scalar_t__ lso_max; scalar_t__ lro_xid; scalar_t__ lro_enabled; scalar_t__ seq_offload; scalar_t__ crc_offload; int boot_time; int max_rport_retry_count; int max_retry_count; scalar_t__ qfull; scalar_t__ link_up; } ;


 int ENOMEM ;
 int FCP_SPPF_CONF_COMPL ;
 int FCP_SPPF_INIT_FCN ;
 int FCP_SPPF_RD_XRDY_DIS ;
 int FCP_SPPF_RETRY ;
 int QEDF_FLOGI_RETRY_CNT ;
 int QEDF_RPORT_RETRY_CNT ;
 int fc_lport_config (struct fc_lport*) ;
 scalar_t__ fc_lport_init_stats (struct fc_lport*) ;
 int jiffies ;

__attribute__((used)) static int qedf_vport_libfc_config(struct fc_vport *vport,
 struct fc_lport *lport)
{
 lport->link_up = 0;
 lport->qfull = 0;
 lport->max_retry_count = QEDF_FLOGI_RETRY_CNT;
 lport->max_rport_retry_count = QEDF_RPORT_RETRY_CNT;
 lport->service_params = (FCP_SPPF_INIT_FCN | FCP_SPPF_RD_XRDY_DIS |
     FCP_SPPF_RETRY | FCP_SPPF_CONF_COMPL);
 lport->boot_time = jiffies;
 lport->e_d_tov = 2 * 1000;
 lport->r_a_tov = 10 * 1000;
 lport->does_npiv = 1;


 if (fc_lport_init_stats(lport))
  return -ENOMEM;


 fc_lport_config(lport);


 lport->crc_offload = 0;
 lport->seq_offload = 0;
 lport->lro_enabled = 0;
 lport->lro_xid = 0;
 lport->lso_max = 0;

 return 0;
}
