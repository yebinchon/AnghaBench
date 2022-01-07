
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {scalar_t__ mmio; } ;


 int DB2K_CPLD_STATUS_INIT ;
 scalar_t__ DB2K_REG_CPLD_STATUS ;
 scalar_t__ DB2K_REG_CPLD_WDATA ;
 int EIO ;
 int db2k_wait_cpld_txready (struct comedi_device*) ;
 int readw (scalar_t__) ;
 int usleep_range (int,int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int db2k_write_cpld(struct comedi_device *dev, u16 data, bool new_cpld)
{
 int result = 0;

 if (new_cpld) {
  result = db2k_wait_cpld_txready(dev);
  if (result)
   return result;
 } else {
  usleep_range(10, 20);
 }
 writew(data, dev->mmio + DB2K_REG_CPLD_WDATA);
 if (!(readw(dev->mmio + DB2K_REG_CPLD_STATUS) & DB2K_CPLD_STATUS_INIT))
  result = -EIO;

 return result;
}
