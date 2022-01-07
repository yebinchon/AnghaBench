
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
 int ioc_err (struct MPT3SAS_ADAPTER*,char*,int,scalar_t__,int ) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,char*,scalar_t__,int ) ;

__attribute__((used)) static u8
_scsih_check_pcie_access_status(struct MPT3SAS_ADAPTER *ioc, u64 wwid,
 u16 handle, u8 access_status)
{
 u8 rc = 1;
 char *desc = ((void*)0);

 switch (access_status) {
 case 139:
 case 140:
  rc = 0;
  break;
 case 145:
  desc = "PCIe device capability failed";
  break;
 case 144:
  desc = "PCIe device blocked";
  ioc_info(ioc,
      "Device with Access Status (%s): wwid(0x%016llx), "
      "handle(0x%04x)\n ll only be added to the internal list",
      desc, (u64)wwid, handle);
  rc = 0;
  break;
 case 142:
  desc = "PCIe device mem space access failed";
  break;
 case 128:
  desc = "PCIe device unsupported";
  break;
 case 141:
  desc = "PCIe device MSIx Required";
  break;
 case 143:
  desc = "PCIe device init fail max";
  break;
 case 129:
  desc = "PCIe device status unknown";
  break;
 case 130:
  desc = "nvme ready timeout";
  break;
 case 138:
  desc = "nvme device configuration unsupported";
  break;
 case 134:
  desc = "nvme identify failed";
  break;
 case 132:
  desc = "nvme qconfig failed";
  break;
 case 131:
  desc = "nvme qcreation failed";
  break;
 case 137:
  desc = "nvme eventcfg failed";
  break;
 case 135:
  desc = "nvme get feature stat failed";
  break;
 case 133:
  desc = "nvme idle timeout";
  break;
 case 136:
  desc = "nvme failure status";
  break;
 default:
  ioc_err(ioc, "NVMe discovery error(0x%02x): wwid(0x%016llx), handle(0x%04x)\n",
   access_status, (u64)wwid, handle);
  return rc;
 }

 if (!rc)
  return rc;

 ioc_info(ioc, "NVMe discovery error(%s): wwid(0x%016llx), handle(0x%04x)\n",
   desc, (u64)wwid, handle);
 return rc;
}
