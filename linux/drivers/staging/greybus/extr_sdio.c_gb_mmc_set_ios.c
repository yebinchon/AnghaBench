
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct mmc_ios {int clock; int vdd; scalar_t__ bus_mode; int power_mode; int bus_width; int timing; int signal_voltage; int drv_type; } ;
struct mmc_host {int ios; } ;
struct gb_sdio_set_ios_request {void* drv_type; void* signal_voltage; void* timing; void* bus_width; void* power_mode; int bus_mode; void* vdd; void* clock; } ;
struct gb_sdio_host {int lock; } ;


 int GB_SDIO_BUSMODE_OPENDRAIN ;
 int GB_SDIO_BUSMODE_PUSHPULL ;
 void* GB_SDIO_BUS_WIDTH_1 ;
 void* GB_SDIO_BUS_WIDTH_4 ;
 void* GB_SDIO_BUS_WIDTH_8 ;
 void* GB_SDIO_POWER_OFF ;
 void* GB_SDIO_POWER_ON ;
 void* GB_SDIO_POWER_UNDEFINED ;
 void* GB_SDIO_POWER_UP ;
 void* GB_SDIO_SET_DRIVER_TYPE_A ;
 void* GB_SDIO_SET_DRIVER_TYPE_B ;
 void* GB_SDIO_SET_DRIVER_TYPE_C ;
 void* GB_SDIO_SET_DRIVER_TYPE_D ;
 void* GB_SDIO_SIGNAL_VOLTAGE_120 ;
 void* GB_SDIO_SIGNAL_VOLTAGE_180 ;
 void* GB_SDIO_SIGNAL_VOLTAGE_330 ;
 void* GB_SDIO_TIMING_LEGACY ;
 void* GB_SDIO_TIMING_MMC_DDR52 ;
 void* GB_SDIO_TIMING_MMC_HS ;
 void* GB_SDIO_TIMING_MMC_HS200 ;
 void* GB_SDIO_TIMING_MMC_HS400 ;
 void* GB_SDIO_TIMING_SD_HS ;
 void* GB_SDIO_TIMING_UHS_DDR50 ;
 void* GB_SDIO_TIMING_UHS_SDR104 ;
 void* GB_SDIO_TIMING_UHS_SDR12 ;
 void* GB_SDIO_TIMING_UHS_SDR25 ;
 void* GB_SDIO_TIMING_UHS_SDR50 ;
 int GB_SDIO_VDD_SHIFT ;
 scalar_t__ MMC_BUSMODE_OPENDRAIN ;
 void* cpu_to_le32 (int) ;
 int gb_sdio_set_ios (struct gb_sdio_host*,struct gb_sdio_set_ios_request*) ;
 int memcpy (int *,struct mmc_ios*,int) ;
 struct gb_sdio_host* mmc_priv (struct mmc_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct gb_sdio_host *host = mmc_priv(mmc);
 struct gb_sdio_set_ios_request request;
 int ret;
 u8 power_mode;
 u8 bus_width;
 u8 timing;
 u8 signal_voltage;
 u8 drv_type;
 u32 vdd = 0;

 mutex_lock(&host->lock);
 request.clock = cpu_to_le32(ios->clock);

 if (ios->vdd)
  vdd = 1 << (ios->vdd - GB_SDIO_VDD_SHIFT);
 request.vdd = cpu_to_le32(vdd);

 request.bus_mode = ios->bus_mode == MMC_BUSMODE_OPENDRAIN ?
       GB_SDIO_BUSMODE_OPENDRAIN :
       GB_SDIO_BUSMODE_PUSHPULL;

 switch (ios->power_mode) {
 case 149:
 default:
  power_mode = GB_SDIO_POWER_OFF;
  break;
 case 146:
  power_mode = GB_SDIO_POWER_UP;
  break;
 case 148:
  power_mode = GB_SDIO_POWER_ON;
  break;
 case 147:
  power_mode = GB_SDIO_POWER_UNDEFINED;
  break;
 }
 request.power_mode = power_mode;

 switch (ios->bus_width) {
 case 152:
  bus_width = GB_SDIO_BUS_WIDTH_1;
  break;
 case 151:
 default:
  bus_width = GB_SDIO_BUS_WIDTH_4;
  break;
 case 150:
  bus_width = GB_SDIO_BUS_WIDTH_8;
  break;
 }
 request.bus_width = bus_width;

 switch (ios->timing) {
 case 138:
 default:
  timing = GB_SDIO_TIMING_LEGACY;
  break;
 case 136:
  timing = GB_SDIO_TIMING_MMC_HS;
  break;
 case 133:
  timing = GB_SDIO_TIMING_SD_HS;
  break;
 case 130:
  timing = GB_SDIO_TIMING_UHS_SDR12;
  break;
 case 129:
  timing = GB_SDIO_TIMING_UHS_SDR25;
  break;
 case 128:
  timing = GB_SDIO_TIMING_UHS_SDR50;
  break;
 case 131:
  timing = GB_SDIO_TIMING_UHS_SDR104;
  break;
 case 132:
  timing = GB_SDIO_TIMING_UHS_DDR50;
  break;
 case 137:
  timing = GB_SDIO_TIMING_MMC_DDR52;
  break;
 case 135:
  timing = GB_SDIO_TIMING_MMC_HS200;
  break;
 case 134:
  timing = GB_SDIO_TIMING_MMC_HS400;
  break;
 }
 request.timing = timing;

 switch (ios->signal_voltage) {
 case 139:
  signal_voltage = GB_SDIO_SIGNAL_VOLTAGE_330;
  break;
 case 140:
 default:
  signal_voltage = GB_SDIO_SIGNAL_VOLTAGE_180;
  break;
 case 141:
  signal_voltage = GB_SDIO_SIGNAL_VOLTAGE_120;
  break;
 }
 request.signal_voltage = signal_voltage;

 switch (ios->drv_type) {
 case 145:
  drv_type = GB_SDIO_SET_DRIVER_TYPE_A;
  break;
 case 143:
  drv_type = GB_SDIO_SET_DRIVER_TYPE_C;
  break;
 case 142:
  drv_type = GB_SDIO_SET_DRIVER_TYPE_D;
  break;
 case 144:
 default:
  drv_type = GB_SDIO_SET_DRIVER_TYPE_B;
  break;
 }
 request.drv_type = drv_type;

 ret = gb_sdio_set_ios(host, &request);
 if (ret < 0)
  goto out;

 memcpy(&mmc->ios, ios, sizeof(mmc->ios));

out:
 mutex_unlock(&host->lock);
}
