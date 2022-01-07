
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bootstatus; } ;
struct menf21bmc_wdt {TYPE_1__ wdt; int i2c_client; } ;


 int BMC_CMD_RST_RSN ;
 int WDIOF_CARDRESET ;
 int WDIOF_EXTERN1 ;
 int WDIOF_EXTERN2 ;
 int WDIOF_POWERUNDER ;
 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static int menf21bmc_wdt_set_bootstatus(struct menf21bmc_wdt *data)
{
 int rst_rsn;

 rst_rsn = i2c_smbus_read_byte_data(data->i2c_client, BMC_CMD_RST_RSN);
 if (rst_rsn < 0)
  return rst_rsn;

 if (rst_rsn == 0x02)
  data->wdt.bootstatus |= WDIOF_CARDRESET;
 else if (rst_rsn == 0x05)
  data->wdt.bootstatus |= WDIOF_EXTERN1;
 else if (rst_rsn == 0x06)
  data->wdt.bootstatus |= WDIOF_EXTERN2;
 else if (rst_rsn == 0x0A)
  data->wdt.bootstatus |= WDIOF_POWERUNDER;

 return 0;
}
