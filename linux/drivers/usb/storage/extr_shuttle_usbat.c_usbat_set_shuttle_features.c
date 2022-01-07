
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; } ;


 unsigned char USBAT_CMD_SET_FEAT ;
 int usbat_execute_command (struct us_data*,unsigned char*,int) ;

__attribute__((used)) static int usbat_set_shuttle_features(struct us_data *us,
          unsigned char external_trigger,
          unsigned char epp_control,
          unsigned char mask_byte,
          unsigned char test_pattern,
          unsigned char subcountH,
          unsigned char subcountL)
{
 unsigned char *command = us->iobuf;

 command[0] = 0x40;
 command[1] = USBAT_CMD_SET_FEAT;





 command[2] = epp_control;







 command[3] = external_trigger;






 command[4] = test_pattern;





 command[5] = mask_byte;







 command[6] = subcountL;
 command[7] = subcountH;

 return usbat_execute_command(us, command, 8);
}
