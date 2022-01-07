
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
 int ioc_err (struct MPT3SAS_ADAPTER*,char*,char*,scalar_t__,int ) ;

__attribute__((used)) static u8
_scsih_check_access_status(struct MPT3SAS_ADAPTER *ioc, u64 sas_address,
 u16 handle, u8 access_status)
{
 u8 rc = 1;
 char *desc = ((void*)0);

 switch (access_status) {
 case 145:
 case 140:
  rc = 0;
  break;
 case 142:
  desc = "sata capability failed";
  break;
 case 143:
  desc = "sata affiliation conflict";
  break;
 case 144:
  desc = "route not addressable";
  break;
 case 128:
  desc = "smp error not addressable";
  break;
 case 146:
  desc = "device blocked";
  break;
 case 141:
 case 130:
 case 139:
 case 137:
 case 136:
 case 138:
 case 132:
 case 134:
 case 131:
 case 129:
 case 133:
 case 135:
  desc = "sata initialization failed";
  break;
 default:
  desc = "unknown";
  break;
 }

 if (!rc)
  return 0;

 ioc_err(ioc, "discovery errors(%s): sas_address(0x%016llx), handle(0x%04x)\n",
  desc, (u64)sas_address, handle);
 return rc;
}
