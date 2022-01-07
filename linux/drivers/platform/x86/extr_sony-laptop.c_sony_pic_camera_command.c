
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lock; } ;


 int EIO ;
 int ITERATIONS_SHORT ;
 int SONYPI_CAMERA_AGC ;
 int SONYPI_CAMERA_BRIGHTNESS ;
 int SONYPI_CAMERA_COLOR ;
 int SONYPI_CAMERA_CONTRAST ;
 int SONYPI_CAMERA_HUE ;
 int SONYPI_CAMERA_PICTURE ;
 int SONYPI_CAMERA_SHARPNESS ;
 int __sony_pic_camera_off () ;
 int __sony_pic_camera_on () ;
 int camera ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int sony_pic_call3 (int,int ,int ) ;
 TYPE_1__ spic_dev ;
 int wait_on_command (int ,int ) ;

int sony_pic_camera_command(int command, u8 value)
{
 if (!camera)
  return -EIO;

 mutex_lock(&spic_dev.lock);

 switch (command) {
 case 135:
  if (value)
   __sony_pic_camera_on();
  else
   __sony_pic_camera_off();
  break;
 case 133:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_BRIGHTNESS, value),
    ITERATIONS_SHORT);
  break;
 case 131:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_CONTRAST, value),
    ITERATIONS_SHORT);
  break;
 case 130:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_HUE, value),
    ITERATIONS_SHORT);
  break;
 case 132:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_COLOR, value),
    ITERATIONS_SHORT);
  break;
 case 128:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_SHARPNESS, value),
    ITERATIONS_SHORT);
  break;
 case 129:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_PICTURE, value),
    ITERATIONS_SHORT);
  break;
 case 134:
  wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_AGC, value),
    ITERATIONS_SHORT);
  break;
 default:
  pr_err("sony_pic_camera_command invalid: %d\n", command);
  break;
 }
 mutex_unlock(&spic_dev.lock);
 return 0;
}
