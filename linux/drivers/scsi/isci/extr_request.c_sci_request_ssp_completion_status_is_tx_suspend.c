
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sci_request_ssp_completion_status_is_tx_suspend(
 unsigned int completion_status)
{
 switch (completion_status) {
 case 137:
 case 138:
 case 129:
 case 133:
 case 132:
 case 131:
 case 136:
 case 128:
 case 130:
 case 134:
 case 135:
  return 1;
 }
 return 0;
}
