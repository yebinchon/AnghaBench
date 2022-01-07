
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSI_EC_COMMAND_WIRELESS ;
 int ec_transaction (int ,int*,int,int*,int) ;

__attribute__((used)) static int get_wireless_state(int *wlan, int *bluetooth)
{
 u8 wdata = 0, rdata;
 int result;

 result = ec_transaction(MSI_EC_COMMAND_WIRELESS, &wdata, 1, &rdata, 1);
 if (result < 0)
  return result;

 if (wlan)
  *wlan = !!(rdata & 8);

 if (bluetooth)
  *bluetooth = !!(rdata & 128);

 return 0;
}
