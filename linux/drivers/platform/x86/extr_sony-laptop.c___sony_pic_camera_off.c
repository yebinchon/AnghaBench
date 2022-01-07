
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ camera_power; } ;


 int ENODEV ;
 int ITERATIONS_SHORT ;
 int SONYPI_CAMERA_MUTE_MASK ;
 int SONYPI_CAMERA_PICTURE ;
 int camera ;
 int pr_warn (char*) ;
 int sony_pic_call2 (int,int ) ;
 int sony_pic_call3 (int,int ,int ) ;
 TYPE_1__ spic_dev ;
 int wait_on_command (int ,int ) ;

__attribute__((used)) static int __sony_pic_camera_off(void)
{
 if (!camera) {
  pr_warn("camera control not enabled\n");
  return -ENODEV;
 }

 wait_on_command(sony_pic_call3(0x90, SONYPI_CAMERA_PICTURE,
    SONYPI_CAMERA_MUTE_MASK),
   ITERATIONS_SHORT);

 if (spic_dev.camera_power) {
  sony_pic_call2(0x91, 0);
  spic_dev.camera_power = 0;
 }
 return 0;
}
