
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {scalar_t__ extra; } ;
struct isd200_info {unsigned char* RegsBuf; unsigned char DeviceHead; int DeviceFlags; } ;


 int ACTION_ENUM ;
 int ACTION_READ_STATUS ;
 unsigned char ATA_ADDRESS_DEVHEAD_SLAVE ;
 unsigned char ATA_ADDRESS_DEVHEAD_STD ;
 unsigned char ATA_BUSY ;
 unsigned char ATA_DF ;
 unsigned char ATA_DRDY ;
 unsigned char ATA_ERR ;
 size_t ATA_REG_HCYL_OFFSET ;
 size_t ATA_REG_LCYL_OFFSET ;
 size_t ATA_REG_STATUS_OFFSET ;
 int DF_ATA_DEVICE ;
 unsigned long HZ ;
 unsigned long ISD200_ENUM_BSY_TIMEOUT ;
 unsigned long ISD200_ENUM_DETECT_TIMEOUT ;
 int ISD200_GOOD ;
 int isd200_action (struct us_data*,int ,unsigned char*,int) ;
 int isd200_atapi_soft_reset (struct us_data*) ;
 unsigned long jiffies ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int isd200_try_enum(struct us_data *us, unsigned char master_slave,
      int detect )
{
 int status = ISD200_GOOD;
 unsigned long endTime;
 struct isd200_info *info = (struct isd200_info *)us->extra;
 unsigned char *regs = info->RegsBuf;
 int recheckAsMaster = 0;

 if ( detect )
  endTime = jiffies + ISD200_ENUM_DETECT_TIMEOUT * HZ;
 else
  endTime = jiffies + ISD200_ENUM_BSY_TIMEOUT * HZ;


 while(1) {

  status = isd200_action( us, ACTION_ENUM, ((void*)0), master_slave );
  if ( status != ISD200_GOOD )
   break;

  status = isd200_action( us, ACTION_READ_STATUS,
     regs, 8 );
  if ( status != ISD200_GOOD )
   break;

  if (!detect) {
   if (regs[ATA_REG_STATUS_OFFSET] & ATA_BUSY) {
    usb_stor_dbg(us, "   %s status is still BSY, try again...\n",
          master_slave == ATA_ADDRESS_DEVHEAD_STD ?
          "Master" : "Slave");
   } else {
    usb_stor_dbg(us, "   %s status !BSY, continue with next operation\n",
          master_slave == ATA_ADDRESS_DEVHEAD_STD ?
          "Master" : "Slave");
    break;
   }
  }



  else if (regs[ATA_REG_STATUS_OFFSET] &
    (ATA_BUSY | ATA_DF | ATA_ERR)) {
   usb_stor_dbg(us, "   Status indicates it is not ready, try again...\n");
  }

  else if (regs[ATA_REG_STATUS_OFFSET] & ATA_DRDY) {
   usb_stor_dbg(us, "   Identified ATA device\n");
   info->DeviceFlags |= DF_ATA_DEVICE;
   info->DeviceHead = master_slave;
   break;
  }




  else if (regs[ATA_REG_HCYL_OFFSET] == 0xEB &&
    regs[ATA_REG_LCYL_OFFSET] == 0x14) {
   if ((master_slave & ATA_ADDRESS_DEVHEAD_SLAVE) &&
       !recheckAsMaster) {
    usb_stor_dbg(us, "   Identified ATAPI device as slave.  Rechecking again as master\n");
    recheckAsMaster = 1;
    master_slave = ATA_ADDRESS_DEVHEAD_STD;
   } else {
    usb_stor_dbg(us, "   Identified ATAPI device\n");
    info->DeviceHead = master_slave;

    status = isd200_atapi_soft_reset(us);
    break;
   }
  } else {
   usb_stor_dbg(us, "   Not ATA, not ATAPI - Weird\n");
   break;
  }


  if (time_after_eq(jiffies, endTime)) {
   if (!detect)
    usb_stor_dbg(us, "   BSY check timeout, just continue with next operation...\n");
   else
    usb_stor_dbg(us, "   Device detect timeout!\n");
   break;
  }
 }

 return status;
}
