
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int sas_expander_list; } ;
struct TYPE_7__ {int IOCStatus; } ;
struct TYPE_6__ {int SASAddress; int DevHandle; } ;
typedef TYPE_1__ Mpi2ExpanderPage0_t ;
typedef TYPE_2__ Mpi2ConfigReply_t ;


 int MPI2_IOCSTATUS_MASK ;
 int MPI2_IOCSTATUS_SUCCESS ;
 int MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL ;
 int _scsih_mark_responding_expander (struct MPT3SAS_ADAPTER*,TYPE_1__*) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ list_empty (int *) ;
 int mpt3sas_config_get_expander_pg0 (struct MPT3SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int ,int) ;
 int pr_info (char*,int,unsigned long long) ;

__attribute__((used)) static void
_scsih_search_responding_expanders(struct MPT3SAS_ADAPTER *ioc)
{
 Mpi2ExpanderPage0_t expander_pg0;
 Mpi2ConfigReply_t mpi_reply;
 u16 ioc_status;
 u64 sas_address;
 u16 handle;

 ioc_info(ioc, "search for expanders: start\n");

 if (list_empty(&ioc->sas_expander_list))
  goto out;

 handle = 0xFFFF;
 while (!(mpt3sas_config_get_expander_pg0(ioc, &mpi_reply, &expander_pg0,
     MPI2_SAS_EXPAND_PGAD_FORM_GET_NEXT_HNDL, handle))) {

  ioc_status = le16_to_cpu(mpi_reply.IOCStatus) &
      MPI2_IOCSTATUS_MASK;
  if (ioc_status != MPI2_IOCSTATUS_SUCCESS)
   break;

  handle = le16_to_cpu(expander_pg0.DevHandle);
  sas_address = le64_to_cpu(expander_pg0.SASAddress);
  pr_info("\texpander present: handle(0x%04x), sas_addr(0x%016llx)\n",
   handle,
      (unsigned long long)sas_address);
  _scsih_mark_responding_expander(ioc, &expander_pg0);
 }

 out:
 ioc_info(ioc, "search for expanders: complete\n");
}
