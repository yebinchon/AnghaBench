
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {scalar_t__ NumSensors; } ;
struct TYPE_9__ {int Flags; } ;
struct TYPE_7__ {int IOCCapabilities; } ;
struct TYPE_8__ {int EEDPTagMode; int AddlFlags2; int NVMeAbortTO; } ;
struct MPT3SAS_ADAPTER {int nvme_abort_timeout; int tm_custom_handling; scalar_t__ is_aero_ioc; TYPE_5__ iounit_pg8; scalar_t__ temp_sensors_count; TYPE_3__ iounit_pg1; TYPE_1__ facts; int iounit_pg0; int ioc_pg8; int bios_pg3; int bios_pg2; TYPE_2__ manu_pg11; int name; int is_gen35_ioc; int manu_pg10; scalar_t__ ir_firmware; int manu_pg0; } ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING ;
 int MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING ;
 int NVME_TASK_ABORT_MAX_TIMEOUT ;
 int NVME_TASK_ABORT_MIN_TIMEOUT ;
 int NVME_TASK_MNGT_CUSTOM_MASK ;
 int _base_display_ioc_capabilities (struct MPT3SAS_ADAPTER*) ;
 int _base_update_ioc_page1_inlinewith_perf_mode (struct MPT3SAS_ADAPTER*) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int mpt3sas_config_get_bios_pg2 (struct MPT3SAS_ADAPTER*,int *,int *) ;
 int mpt3sas_config_get_bios_pg3 (struct MPT3SAS_ADAPTER*,int *,int *) ;
 int mpt3sas_config_get_ioc_pg8 (struct MPT3SAS_ADAPTER*,int *,int *) ;
 int mpt3sas_config_get_iounit_pg0 (struct MPT3SAS_ADAPTER*,int *,int *) ;
 int mpt3sas_config_get_iounit_pg1 (struct MPT3SAS_ADAPTER*,int *,TYPE_3__*) ;
 int mpt3sas_config_get_iounit_pg8 (struct MPT3SAS_ADAPTER*,int *,TYPE_5__*) ;
 int mpt3sas_config_get_manufacturing_pg0 (struct MPT3SAS_ADAPTER*,int *,int *) ;
 int mpt3sas_config_get_manufacturing_pg10 (struct MPT3SAS_ADAPTER*,int *,int *) ;
 int mpt3sas_config_get_manufacturing_pg11 (struct MPT3SAS_ADAPTER*,int *,TYPE_2__*) ;
 int mpt3sas_config_set_iounit_pg1 (struct MPT3SAS_ADAPTER*,int *,TYPE_3__*) ;
 int mpt3sas_config_set_manufacturing_pg11 (struct MPT3SAS_ADAPTER*,int *,TYPE_2__*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void
_base_static_config_pages(struct MPT3SAS_ADAPTER *ioc)
{
 Mpi2ConfigReply_t mpi_reply;
 u32 iounit_pg1_flags;

 ioc->nvme_abort_timeout = 30;
 mpt3sas_config_get_manufacturing_pg0(ioc, &mpi_reply, &ioc->manu_pg0);
 if (ioc->ir_firmware)
  mpt3sas_config_get_manufacturing_pg10(ioc, &mpi_reply,
      &ioc->manu_pg10);





 mpt3sas_config_get_manufacturing_pg11(ioc, &mpi_reply, &ioc->manu_pg11);
 if (!ioc->is_gen35_ioc && ioc->manu_pg11.EEDPTagMode == 0) {
  pr_err("%s: overriding NVDATA EEDPTagMode setting\n",
      ioc->name);
  ioc->manu_pg11.EEDPTagMode &= ~0x3;
  ioc->manu_pg11.EEDPTagMode |= 0x1;
  mpt3sas_config_set_manufacturing_pg11(ioc, &mpi_reply,
      &ioc->manu_pg11);
 }
 if (ioc->manu_pg11.AddlFlags2 & NVME_TASK_MNGT_CUSTOM_MASK)
  ioc->tm_custom_handling = 1;
 else {
  ioc->tm_custom_handling = 0;
  if (ioc->manu_pg11.NVMeAbortTO < NVME_TASK_ABORT_MIN_TIMEOUT)
   ioc->nvme_abort_timeout = NVME_TASK_ABORT_MIN_TIMEOUT;
  else if (ioc->manu_pg11.NVMeAbortTO >
     NVME_TASK_ABORT_MAX_TIMEOUT)
   ioc->nvme_abort_timeout = NVME_TASK_ABORT_MAX_TIMEOUT;
  else
   ioc->nvme_abort_timeout = ioc->manu_pg11.NVMeAbortTO;
 }

 mpt3sas_config_get_bios_pg2(ioc, &mpi_reply, &ioc->bios_pg2);
 mpt3sas_config_get_bios_pg3(ioc, &mpi_reply, &ioc->bios_pg3);
 mpt3sas_config_get_ioc_pg8(ioc, &mpi_reply, &ioc->ioc_pg8);
 mpt3sas_config_get_iounit_pg0(ioc, &mpi_reply, &ioc->iounit_pg0);
 mpt3sas_config_get_iounit_pg1(ioc, &mpi_reply, &ioc->iounit_pg1);
 mpt3sas_config_get_iounit_pg8(ioc, &mpi_reply, &ioc->iounit_pg8);
 _base_display_ioc_capabilities(ioc);





 iounit_pg1_flags = le32_to_cpu(ioc->iounit_pg1.Flags);
 if ((ioc->facts.IOCCapabilities &
     MPI2_IOCFACTS_CAPABILITY_TASK_SET_FULL_HANDLING))
  iounit_pg1_flags &=
      ~MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING;
 else
  iounit_pg1_flags |=
      MPI2_IOUNITPAGE1_DISABLE_TASK_SET_FULL_HANDLING;
 ioc->iounit_pg1.Flags = cpu_to_le32(iounit_pg1_flags);
 mpt3sas_config_set_iounit_pg1(ioc, &mpi_reply, &ioc->iounit_pg1);

 if (ioc->iounit_pg8.NumSensors)
  ioc->temp_sensors_count = ioc->iounit_pg8.NumSensors;
 if (ioc->is_aero_ioc)
  _base_update_ioc_page1_inlinewith_perf_mode(ioc);
}
