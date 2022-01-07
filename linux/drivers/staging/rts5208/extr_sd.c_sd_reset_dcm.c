
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtsx_chip {int dummy; } ;


 int DCM_DRP_CTL ;
 int DCM_RESET ;
 int DCM_RX ;
 int DCM_TX ;
 int STATUS_SUCCESS ;
 scalar_t__ TUNE_RX ;
 int rtsx_write_register (struct rtsx_chip*,int ,int,int) ;

__attribute__((used)) static int sd_reset_dcm(struct rtsx_chip *chip, u8 tune_dir)
{
 int retval;

 if (tune_dir == TUNE_RX) {
  retval = rtsx_write_register(chip, DCM_DRP_CTL, 0xFF,
          DCM_RESET | DCM_RX);
  if (retval)
   return retval;
  retval = rtsx_write_register(chip, DCM_DRP_CTL, 0xFF, DCM_RX);
  if (retval)
   return retval;
 } else {
  retval = rtsx_write_register(chip, DCM_DRP_CTL, 0xFF,
          DCM_RESET | DCM_TX);
  if (retval)
   return retval;
  retval = rtsx_write_register(chip, DCM_DRP_CTL, 0xFF, DCM_TX);
  if (retval)
   return retval;
 }

 return STATUS_SUCCESS;
}
