
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fintek_8250 {int pid; } ;


 int CHIP_ID1 ;
 int CHIP_ID2 ;





 int ENODEV ;
 int VENDOR_ID1 ;
 int VENDOR_ID1_VAL ;
 int VENDOR_ID2 ;
 int VENDOR_ID2_VAL ;
 int sio_read_reg (struct fintek_8250*,int ) ;

__attribute__((used)) static int fintek_8250_check_id(struct fintek_8250 *pdata)
{
 u16 chip;

 if (sio_read_reg(pdata, VENDOR_ID1) != VENDOR_ID1_VAL)
  return -ENODEV;

 if (sio_read_reg(pdata, VENDOR_ID2) != VENDOR_ID2_VAL)
  return -ENODEV;

 chip = sio_read_reg(pdata, CHIP_ID1);
 chip |= sio_read_reg(pdata, CHIP_ID2) << 8;

 switch (chip) {
 case 129:
 case 128:
 case 131:
 case 130:
 case 132:
  break;
 default:
  return -ENODEV;
 }

 pdata->pid = chip;
 return 0;
}
