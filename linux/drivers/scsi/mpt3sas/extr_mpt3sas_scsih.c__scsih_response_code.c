
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct MPT3SAS_ADAPTER {int dummy; } ;
 int ioc_warn (struct MPT3SAS_ADAPTER*,char*,int,char*) ;

__attribute__((used)) static void
_scsih_response_code(struct MPT3SAS_ADAPTER *ioc, u8 response_code)
{
 char *desc;

 switch (response_code) {
 case 132:
  desc = "task management request completed";
  break;
 case 134:
  desc = "invalid frame";
  break;
 case 129:
  desc = "task management request not supported";
  break;
 case 131:
  desc = "task management request failed";
  break;
 case 128:
  desc = "task management request succeeded";
  break;
 case 130:
  desc = "invalid lun";
  break;
 case 0xA:
  desc = "overlapped tag attempted";
  break;
 case 133:
  desc = "task queued, however not sent to target";
  break;
 default:
  desc = "unknown";
  break;
 }
 ioc_warn(ioc, "response_code(0x%01x): %s\n", response_code, desc);
}
