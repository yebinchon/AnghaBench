
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mpt3_diag_register {int requested_buffer_size; int unique_id; int buffer_type; } ;
struct TYPE_2__ {scalar_t__ MasterData; } ;
struct MPT3SAS_ADAPTER {TYPE_1__ diag_trigger_master; } ;


 scalar_t__ MASTER_TRIGGER_ADAPTER_RESET ;
 scalar_t__ MASTER_TRIGGER_FW_FAULT ;
 int MPI2_DIAG_BUF_TYPE_EXTENDED ;
 int MPI2_DIAG_BUF_TYPE_SNAPSHOT ;
 int MPI2_DIAG_BUF_TYPE_TRACE ;
 int _ctl_diag_register_2 (struct MPT3SAS_ADAPTER*,struct mpt3_diag_register*) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 int memset (struct mpt3_diag_register*,int ,int) ;

void
mpt3sas_enable_diag_buffer(struct MPT3SAS_ADAPTER *ioc, u8 bits_to_register)
{
 struct mpt3_diag_register diag_register;

 memset(&diag_register, 0, sizeof(struct mpt3_diag_register));

 if (bits_to_register & 1) {
  ioc_info(ioc, "registering trace buffer support\n");
  ioc->diag_trigger_master.MasterData =
      (MASTER_TRIGGER_FW_FAULT + MASTER_TRIGGER_ADAPTER_RESET);
  diag_register.buffer_type = MPI2_DIAG_BUF_TYPE_TRACE;

  diag_register.requested_buffer_size = 2 * (1024 * 1024);
  diag_register.unique_id = 0x7075900;
  _ctl_diag_register_2(ioc, &diag_register);
 }

 if (bits_to_register & 2) {
  ioc_info(ioc, "registering snapshot buffer support\n");
  diag_register.buffer_type = MPI2_DIAG_BUF_TYPE_SNAPSHOT;

  diag_register.requested_buffer_size = 2 * (1024 * 1024);
  diag_register.unique_id = 0x7075901;
  _ctl_diag_register_2(ioc, &diag_register);
 }

 if (bits_to_register & 4) {
  ioc_info(ioc, "registering extended buffer support\n");
  diag_register.buffer_type = MPI2_DIAG_BUF_TYPE_EXTENDED;

  diag_register.requested_buffer_size = 2 * (1024 * 1024);
  diag_register.unique_id = 0x7075901;
  _ctl_diag_register_2(ioc, &diag_register);
 }
}
