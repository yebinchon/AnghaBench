
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u16 ;
struct MPT3SAS_ADAPTER {int (* build_zero_len_sge_mpi ) (struct MPT3SAS_ADAPTER*,int *) ;} ;
struct TYPE_16__ {int IOCStatus; int ExtPageLength; } ;
struct TYPE_12__ {scalar_t__ PageNumber; int PageVersion; int PageType; } ;
struct TYPE_15__ {int PageAddress; int Action; int PageBufferSGE; TYPE_1__ Header; int ExtPageType; int Function; } ;
struct TYPE_14__ {int NumElements; int ConfigNum; TYPE_2__* ConfigElement; } ;
struct TYPE_13__ {int VolDevHandle; int PhysDiskDevHandle; int ElementFlags; } ;
typedef TYPE_3__ Mpi2RaidConfigurationPage0_t ;
typedef TYPE_4__ Mpi2ConfigRequest_t ;
typedef TYPE_5__ Mpi2ConfigReply_t ;


 int GFP_KERNEL ;
 int MPI2_CONFIG_ACTION_PAGE_HEADER ;
 int MPI2_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI2_CONFIG_EXTPAGETYPE_RAID_CONFIG ;
 int MPI2_CONFIG_PAGETYPE_EXTENDED ;
 int MPI2_FUNCTION_CONFIG ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int MPI2_RAIDCONFIG0_EFLAGS_HOT_SPARE_ELEMENT ;
 int MPI2_RAIDCONFIG0_EFLAGS_MASK_ELEMENT_TYPE ;
 int MPI2_RAIDCONFIG0_EFLAGS_OCE_ELEMENT ;
 int MPI2_RAIDCONFIG0_EFLAGS_VOL_PHYS_DISK_ELEMENT ;
 int MPI2_RAIDCONFIG0_PAGEVERSION ;
 scalar_t__ MPI2_RAID_PGAD_FORM_GET_NEXT_CONFIGNUM ;
 int MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT ;
 int _config_request (struct MPT3SAS_ADAPTER*,TYPE_4__*,TYPE_5__*,int ,TYPE_3__*,int) ;
 int cpu_to_le32 (scalar_t__) ;
 int kfree (TYPE_3__*) ;
 TYPE_3__* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (struct MPT3SAS_ADAPTER*,int *) ;

int
mpt3sas_config_get_volume_handle(struct MPT3SAS_ADAPTER *ioc, u16 pd_handle,
 u16 *volume_handle)
{
 Mpi2RaidConfigurationPage0_t *config_page = ((void*)0);
 Mpi2ConfigRequest_t mpi_request;
 Mpi2ConfigReply_t mpi_reply;
 int r, i, config_page_sz;
 u16 ioc_status;
 int config_num;
 u16 element_type;
 u16 phys_disk_dev_handle;

 *volume_handle = 0;
 memset(&mpi_request, 0, sizeof(Mpi2ConfigRequest_t));
 mpi_request.Function = MPI2_FUNCTION_CONFIG;
 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_HEADER;
 mpi_request.Header.PageType = MPI2_CONFIG_PAGETYPE_EXTENDED;
 mpi_request.ExtPageType = MPI2_CONFIG_EXTPAGETYPE_RAID_CONFIG;
 mpi_request.Header.PageVersion = MPI2_RAIDCONFIG0_PAGEVERSION;
 mpi_request.Header.PageNumber = 0;
 ioc->build_zero_len_sge_mpi(ioc, &mpi_request.PageBufferSGE);
 r = _config_request(ioc, &mpi_request, &mpi_reply,
     MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, ((void*)0), 0);
 if (r)
  goto out;

 mpi_request.Action = MPI2_CONFIG_ACTION_PAGE_READ_CURRENT;
 config_page_sz = (le16_to_cpu(mpi_reply.ExtPageLength) * 4);
 config_page = kmalloc(config_page_sz, GFP_KERNEL);
 if (!config_page) {
  r = -1;
  goto out;
 }

 config_num = 0xff;
 while (1) {
  mpi_request.PageAddress = cpu_to_le32(config_num +
      MPI2_RAID_PGAD_FORM_GET_NEXT_CONFIGNUM);
  r = _config_request(ioc, &mpi_request, &mpi_reply,
      MPT3_CONFIG_PAGE_DEFAULT_TIMEOUT, config_page,
      config_page_sz);
  if (r)
   goto out;
  r = -1;
  ioc_status = le16_to_cpu(mpi_reply.IOCStatus) &
      MPI2_IOCSTATUS_MASK;
  if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
   goto out;
  for (i = 0; i < config_page->NumElements; i++) {
   element_type = le16_to_cpu(config_page->
       ConfigElement[i].ElementFlags) &
       MPI2_RAIDCONFIG0_EFLAGS_MASK_ELEMENT_TYPE;
   if (element_type ==
       MPI2_RAIDCONFIG0_EFLAGS_VOL_PHYS_DISK_ELEMENT ||
       element_type ==
       MPI2_RAIDCONFIG0_EFLAGS_OCE_ELEMENT) {
    phys_disk_dev_handle =
        le16_to_cpu(config_page->ConfigElement[i].
        PhysDiskDevHandle);
    if (phys_disk_dev_handle == pd_handle) {
     *volume_handle =
         le16_to_cpu(config_page->
         ConfigElement[i].VolDevHandle);
     r = 0;
     goto out;
    }
   } else if (element_type ==
       MPI2_RAIDCONFIG0_EFLAGS_HOT_SPARE_ELEMENT) {
    *volume_handle = 0;
    r = 0;
    goto out;
   }
  }
  config_num = config_page->ConfigNum;
 }
 out:
 kfree(config_page);
 return r;
}
