
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {int ATAConfig; } ;
struct isd200_info {int DeviceHead; TYPE_1__ ConfigData; } ;


 int ATACFG_MASTER ;
 int ATA_ADDRESS_DEVHEAD_SLAVE ;
 int ATA_ADDRESS_DEVHEAD_STD ;
 int ISD200_GOOD ;
 int isd200_read_config (struct us_data*) ;
 int isd200_srst (struct us_data*) ;
 int isd200_try_enum (struct us_data*,int,int) ;
 int isd200_write_config (struct us_data*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int isd200_manual_enum(struct us_data *us)
{
 struct isd200_info *info = (struct isd200_info *)us->extra;
 int retStatus = ISD200_GOOD;

 usb_stor_dbg(us, "Entering isd200_manual_enum\n");

 retStatus = isd200_read_config(us);
 if (retStatus == ISD200_GOOD) {
  int isslave;

  retStatus = isd200_try_enum( us, ATA_ADDRESS_DEVHEAD_STD, 0);
  if (retStatus == ISD200_GOOD)
   retStatus = isd200_try_enum( us, ATA_ADDRESS_DEVHEAD_SLAVE, 0);

  if (retStatus == ISD200_GOOD) {
   retStatus = isd200_srst(us);
   if (retStatus == ISD200_GOOD)

    retStatus = isd200_try_enum( us, ATA_ADDRESS_DEVHEAD_STD, 1);
  }

  isslave = (info->DeviceHead & ATA_ADDRESS_DEVHEAD_SLAVE) ? 1 : 0;
  if (!(info->ConfigData.ATAConfig & ATACFG_MASTER)) {
   usb_stor_dbg(us, "   Setting Master/Slave selection to %d\n",
         isslave);
   info->ConfigData.ATAConfig &= 0x3f;
   info->ConfigData.ATAConfig |= (isslave<<6);
   retStatus = isd200_write_config(us);
  }
 }

 usb_stor_dbg(us, "Leaving isd200_manual_enum %08X\n", retStatus);
 return(retStatus);
}
