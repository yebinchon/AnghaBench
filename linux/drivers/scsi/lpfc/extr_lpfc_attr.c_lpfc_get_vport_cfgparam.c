
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;


 int lpfc_devloss_tmo ;
 int lpfc_devloss_tmo_init (struct lpfc_vport*,int ) ;
 int lpfc_discovery_threads ;
 int lpfc_discovery_threads_init (struct lpfc_vport*,int ) ;
 int lpfc_enable_da_id ;
 int lpfc_enable_da_id_init (struct lpfc_vport*,int ) ;
 int lpfc_fcp_class ;
 int lpfc_fcp_class_init (struct lpfc_vport*,int ) ;
 int lpfc_first_burst_size ;
 int lpfc_first_burst_size_init (struct lpfc_vport*,int ) ;
 int lpfc_log_verbose ;
 int lpfc_log_verbose_init (struct lpfc_vport*,int ) ;
 int lpfc_lun_queue_depth ;
 int lpfc_lun_queue_depth_init (struct lpfc_vport*,int ) ;
 int lpfc_max_luns ;
 int lpfc_max_luns_init (struct lpfc_vport*,int ) ;
 int lpfc_max_scsicmpl_time ;
 int lpfc_max_scsicmpl_time_init (struct lpfc_vport*,int ) ;
 int lpfc_nodev_tmo ;
 int lpfc_nodev_tmo_init (struct lpfc_vport*,int ) ;
 int lpfc_peer_port_login ;
 int lpfc_peer_port_login_init (struct lpfc_vport*,int ) ;
 int lpfc_restrict_login ;
 int lpfc_restrict_login_init (struct lpfc_vport*,int ) ;
 int lpfc_scan_down ;
 int lpfc_scan_down_init (struct lpfc_vport*,int ) ;
 int lpfc_tgt_queue_depth ;
 int lpfc_tgt_queue_depth_init (struct lpfc_vport*,int ) ;
 int lpfc_use_adisc ;
 int lpfc_use_adisc_init (struct lpfc_vport*,int ) ;

void
lpfc_get_vport_cfgparam(struct lpfc_vport *vport)
{
 lpfc_log_verbose_init(vport, lpfc_log_verbose);
 lpfc_lun_queue_depth_init(vport, lpfc_lun_queue_depth);
 lpfc_tgt_queue_depth_init(vport, lpfc_tgt_queue_depth);
 lpfc_devloss_tmo_init(vport, lpfc_devloss_tmo);
 lpfc_nodev_tmo_init(vport, lpfc_nodev_tmo);
 lpfc_peer_port_login_init(vport, lpfc_peer_port_login);
 lpfc_restrict_login_init(vport, lpfc_restrict_login);
 lpfc_fcp_class_init(vport, lpfc_fcp_class);
 lpfc_use_adisc_init(vport, lpfc_use_adisc);
 lpfc_first_burst_size_init(vport, lpfc_first_burst_size);
 lpfc_max_scsicmpl_time_init(vport, lpfc_max_scsicmpl_time);
 lpfc_discovery_threads_init(vport, lpfc_discovery_threads);
 lpfc_max_luns_init(vport, lpfc_max_luns);
 lpfc_scan_down_init(vport, lpfc_scan_down);
 lpfc_enable_da_id_init(vport, lpfc_enable_da_id);
 return;
}
