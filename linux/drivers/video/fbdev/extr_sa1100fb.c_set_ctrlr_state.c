
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sa1100fb_info {scalar_t__ state; int ctrlr_lock; } ;
 scalar_t__ C_STARTUP ;
 int __sa1100fb_backlight_power (struct sa1100fb_info*,int) ;
 int __sa1100fb_lcd_power (struct sa1100fb_info*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sa1100fb_disable_controller (struct sa1100fb_info*) ;
 int sa1100fb_enable_controller (struct sa1100fb_info*) ;
 int sa1100fb_setup_gpio (struct sa1100fb_info*) ;

__attribute__((used)) static void set_ctrlr_state(struct sa1100fb_info *fbi, u_int state)
{
 u_int old_state;

 mutex_lock(&fbi->ctrlr_lock);

 old_state = fbi->state;




 if (old_state == C_STARTUP && state == 128)
  state = 131;

 switch (state) {
 case 133:




  if (old_state != 134 && old_state != 132) {
   fbi->state = state;
   sa1100fb_disable_controller(fbi);
  }
  break;

 case 132:
 case 134:



  if (old_state != 134) {
   fbi->state = state;

   __sa1100fb_backlight_power(fbi, 0);
   if (old_state != 133)
    sa1100fb_disable_controller(fbi);
   __sa1100fb_lcd_power(fbi, 0);
  }
  break;

 case 130:




  if (old_state == 133) {
   fbi->state = 131;
   sa1100fb_enable_controller(fbi);
  }
  break;

 case 128:





  if (old_state == 131) {
   sa1100fb_disable_controller(fbi);
   sa1100fb_setup_gpio(fbi);
   sa1100fb_enable_controller(fbi);
  }
  break;

 case 129:





  if (old_state != 132)
   break;


 case 131:




  if (old_state != 131) {
   fbi->state = 131;
   sa1100fb_setup_gpio(fbi);
   __sa1100fb_lcd_power(fbi, 1);
   sa1100fb_enable_controller(fbi);
   __sa1100fb_backlight_power(fbi, 1);
  }
  break;
 }
 mutex_unlock(&fbi->ctrlr_lock);
}
