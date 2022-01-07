
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int (* build_zero_len_sge_mpi ) (struct MPT3SAS_ADAPTER*,int *) ;} ;
struct TYPE_5__ {int PageVersion; scalar_t__ PageNumber; int PageType; } ;
struct TYPE_6__ {int Action; int PageAddress; int PageBufferSGE; TYPE_1__ Header; int Function; } ;
typedef int Mpi2RaidVolPage0_t ;
typedef TYPE_2__ Mpi2ConfigRequest_t ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI2_CONFIG_PAGETYPE_RAID_VOLUME ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_RAIDVOLPAGE0_PAGEVERSION ;
 int MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT3SAS_ADAPTER*,TYPE_2__*,int *,int ,int *,int ) ;
 int cpu_to_le32 (int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stub1 (struct MPT3SAS_ADAPTER*,int *) ;

int
mpt3sas_config_get_raid_volume_pg0(struct MPT3SAS_ADAPTER *ioc,
 Mpi2ConfigReply_t *mpi_reply, Mpi2RaidVolPage0_t *config_page, u32 form,
 u32 handle, u16 sz)
{
 Mpi2ConfigRequest_t mpi_request;
 int r;

 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_RAID_VOLUME;
 mpi_request.Header.PageNumber = 0;
 mpi_request.Header.PageVersion = MPI2_RAIDVOLPAGE0_PAGEVERSION;
 ioc->build_zero_len_sge_mpi(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.PageAddress = cpu_to_le32(form | handle);
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
 r = _config_request(ioc, &mpi_request, mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page, sz);
 out:
 return r;
}
