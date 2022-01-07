
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct MPT3SAS_ADAPTER {int logging_level; } ;
struct TYPE_8__ {scalar_t__ IOCLogInfo; scalar_t__ IOCStatus; } ;
struct TYPE_6__ {int PageType; int PageNumber; } ;
struct TYPE_7__ {scalar_t__ PageAddress; int Action; TYPE_1__ Header; int ExtPageType; } ;
typedef TYPE_2__ Mpi2ConfigRequest_t ;
typedef TYPE_3__ MPI2DefaultReply_t ;
 int MPI2_CONFIG_PAGETYPE_MASK ;


 int MPT_DEBUG_CONFIG ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,char*,...) ;
 int le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (scalar_t__) ;
 TYPE_2__* mpt3sas_base_get_msg_frame (struct MPT3SAS_ADAPTER*,int ) ;

__attribute__((used)) static void
_config_display_some_debug(struct MPT3SAS_ADAPTER *ioc, u16 smid,
 char *calling_function_name, MPI2DefaultReply_t *mpi_reply)
{
 Mpi2ConfigRequest_t *mpi_request;
 char *desc = ((void*)0);

 if (!(ioc->logging_level & MPT_DEBUG_CONFIG))
  return;

 mpi_request = mpt3sas_base_get_msg_frame(ioc, smid);
 switch (mpi_request->Header.PageType & MPI2_CONFIG_PAGETYPE_MASK) {
 case 131:
  desc = "io_unit";
  break;
 case 132:
  desc = "ioc";
  break;
 case 134:
  desc = "bios";
  break;
 case 128:
  desc = "raid_volume";
  break;
 case 130:
  desc = "manufacturing";
  break;
 case 129:
  desc = "physdisk";
  break;
 case 133:
  switch (mpi_request->ExtPageType) {
  case 137:
   desc = "sas_io_unit";
   break;
  case 138:
   desc = "sas_expander";
   break;
  case 139:
   desc = "sas_device";
   break;
  case 136:
   desc = "sas_phy";
   break;
  case 145:
   desc = "log";
   break;
  case 147:
   desc = "enclosure";
   break;
  case 140:
   desc = "raid_config";
   break;
  case 148:
   desc = "driver_mapping";
   break;
  case 135:
   desc = "sas_port";
   break;
  case 146:
   desc = "ext_manufacturing";
   break;
  case 143:
   desc = "pcie_io_unit";
   break;
  case 141:
   desc = "pcie_switch";
   break;
  case 144:
   desc = "pcie_device";
   break;
  case 142:
   desc = "pcie_link";
   break;
  }
  break;
 }

 if (!desc)
  return;

 ioc_info(ioc, "%s: %s(%d), action(%d), form(0x%08x), smid(%d)\n",
   calling_function_name, desc,
   mpi_request->Header.PageNumber, mpi_request->Action,
   le32_to_cpu(mpi_request->PageAddress), smid);

 if (!mpi_reply)
  return;

 if (mpi_reply->IOCStatus || mpi_reply->IOCLogInfo)
  ioc_info(ioc, "\tiocstatus(0x%04x), loginfo(0x%08x)\n",
    le16_to_cpu(mpi_reply->IOCStatus),
    le32_to_cpu(mpi_reply->IOCLogInfo));
}
