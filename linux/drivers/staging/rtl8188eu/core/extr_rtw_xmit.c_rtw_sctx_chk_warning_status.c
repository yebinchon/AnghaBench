
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool rtw_sctx_chk_warning_status(int status)
{
 switch (status) {
 case 128:
 case 132:
 case 131:

 case 129:
 case 130:
  return 1;
 default:
  return 0;
 }
}
