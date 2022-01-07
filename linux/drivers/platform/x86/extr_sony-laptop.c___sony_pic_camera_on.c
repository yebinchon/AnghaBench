
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int camera_power; } ;


 int ENODEV ;
 int ITERATIONS_SHORT ;
 int SONYPI_CAMERA_CONTROL ;
 scalar_t__ __sony_pic_camera_ready () ;
 int camera ;
 int msleep (int) ;
 int pr_warn (char*) ;
 int sony_pic_call1 (int) ;
 scalar_t__ sony_pic_call2 (int,int) ;
 int sony_pic_call3 (int,int ,int) ;
 TYPE_1__ spic_dev ;
 int wait_on_command (int ,int ) ;

__attribute__((used)) static int __sony_pic_camera_on(void)
{
 int i, j, x;

 if (!camera) {
  pr_warn("camera control not enabled\n");
  return -ENODEV;
 }

 if (spic_dev.camera_power)
  return 0;

 for (j = 5; j > 0; j--) {

  for (x = 0; x < 100 && sony_pic_call2(0x91, 0x1); x++)
   msleep(10);
  sony_pic_call1(0x93);

  for (i = 400; i > 0; i--) {
   if (__sony_pic_camera_ready())
    break;
   msleep(10);
  }
  if (i)
   break;
 }

 if (j == 0) {
  pr_warn("failed to power on camera\n");
  return -ENODEV;
 }

 wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_CONTROL,
    0x5a),
   ITERATIONS_SHORT);

 spic_dev.camera_power = 1;
 return 0;
}
