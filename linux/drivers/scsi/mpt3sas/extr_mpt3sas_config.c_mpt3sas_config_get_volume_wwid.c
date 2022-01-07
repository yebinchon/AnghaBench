
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_3__ {int WWID; } ;
typedef TYPE_1__ Mpi2RaidVolPage1_t ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_RAID_VOLUME_PGAD_FORM_HANDLE ;
 int le64_to_cpu (int ) ;
 int mpt3sas_config_get_raid_volume_pg1 (struct MPT3SAS_ADAPTER*,int *,TYPE_1__*,int ,int ) ;

int
mpt3sas_config_get_volume_wwid(struct MPT3SAS_ADAPTER *ioc, u16 volume_handle,
 u64 *wwid)
{
 Mpi2ConfigReply_t mpi_reply;
 Mpi2RaidVolPage1_t raid_vol_pg1;

 *wwid = 0;
 if (!(mpt3sas_config_get_raid_volume_pg1(ioc, &mpi_reply,
     &raid_vol_pg1, MPI2_RAID_VOLUME_PGAD_FORM_HANDLE,
     volume_handle))) {
  *wwid = le64_to_cpu(raid_vol_pg1.WWID);
  return 0;
 } else
  return -1;
}
