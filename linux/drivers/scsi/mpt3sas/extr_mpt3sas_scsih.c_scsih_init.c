
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _scsih_done ;
 int _scsih_io_done ;
 int _scsih_sas_control_complete ;
 int _scsih_tm_done ;
 int _scsih_tm_tr_complete ;
 int _scsih_tm_volume_tr_complete ;
 void* base_cb_idx ;
 void* config_cb_idx ;
 void* ctl_cb_idx ;
 scalar_t__ mpt2_ids ;
 scalar_t__ mpt3_ids ;
 int mpt3sas_base_done ;
 int mpt3sas_base_initialize_callback_handler () ;
 void* mpt3sas_base_register_callback_handler (int ) ;
 int mpt3sas_config_done ;
 int mpt3sas_ctl_done ;
 int mpt3sas_port_enable_done ;
 int mpt3sas_transport_done ;
 void* port_enable_cb_idx ;
 void* scsi_io_cb_idx ;
 void* scsih_cb_idx ;
 void* tm_cb_idx ;
 void* tm_sas_control_cb_idx ;
 void* tm_tr_cb_idx ;
 void* tm_tr_volume_cb_idx ;
 void* transport_cb_idx ;

__attribute__((used)) static int
scsih_init(void)
{
 mpt2_ids = 0;
 mpt3_ids = 0;

 mpt3sas_base_initialize_callback_handler();


 scsi_io_cb_idx = mpt3sas_base_register_callback_handler(_scsih_io_done);


 tm_cb_idx = mpt3sas_base_register_callback_handler(_scsih_tm_done);


 base_cb_idx = mpt3sas_base_register_callback_handler(mpt3sas_base_done);
 port_enable_cb_idx = mpt3sas_base_register_callback_handler(
     mpt3sas_port_enable_done);


 transport_cb_idx = mpt3sas_base_register_callback_handler(
     mpt3sas_transport_done);


 scsih_cb_idx = mpt3sas_base_register_callback_handler(_scsih_done);


 config_cb_idx = mpt3sas_base_register_callback_handler(
     mpt3sas_config_done);


 ctl_cb_idx = mpt3sas_base_register_callback_handler(mpt3sas_ctl_done);

 tm_tr_cb_idx = mpt3sas_base_register_callback_handler(
     _scsih_tm_tr_complete);

 tm_tr_volume_cb_idx = mpt3sas_base_register_callback_handler(
     _scsih_tm_volume_tr_complete);

 tm_sas_control_cb_idx = mpt3sas_base_register_callback_handler(
     _scsih_sas_control_complete);

 return 0;
}
