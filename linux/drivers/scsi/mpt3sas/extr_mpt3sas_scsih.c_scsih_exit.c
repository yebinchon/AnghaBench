
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base_cb_idx ;
 int config_cb_idx ;
 int ctl_cb_idx ;
 int hbas_to_enumerate ;
 int mpt2sas_raid_template ;
 int mpt3sas_base_release_callback_handler (int ) ;
 int mpt3sas_raid_template ;
 int mpt3sas_transport_template ;
 int port_enable_cb_idx ;
 int raid_class_release (int ) ;
 int sas_release_transport (int ) ;
 int scsi_io_cb_idx ;
 int scsih_cb_idx ;
 int tm_cb_idx ;
 int tm_sas_control_cb_idx ;
 int tm_tr_cb_idx ;
 int tm_tr_volume_cb_idx ;
 int transport_cb_idx ;

__attribute__((used)) static void
scsih_exit(void)
{

 mpt3sas_base_release_callback_handler(scsi_io_cb_idx);
 mpt3sas_base_release_callback_handler(tm_cb_idx);
 mpt3sas_base_release_callback_handler(base_cb_idx);
 mpt3sas_base_release_callback_handler(port_enable_cb_idx);
 mpt3sas_base_release_callback_handler(transport_cb_idx);
 mpt3sas_base_release_callback_handler(scsih_cb_idx);
 mpt3sas_base_release_callback_handler(config_cb_idx);
 mpt3sas_base_release_callback_handler(ctl_cb_idx);

 mpt3sas_base_release_callback_handler(tm_tr_cb_idx);
 mpt3sas_base_release_callback_handler(tm_tr_volume_cb_idx);
 mpt3sas_base_release_callback_handler(tm_sas_control_cb_idx);


 if (hbas_to_enumerate != 1)
  raid_class_release(mpt3sas_raid_template);
 if (hbas_to_enumerate != 2)
  raid_class_release(mpt2sas_raid_template);
 sas_release_transport(mpt3sas_transport_template);
}
