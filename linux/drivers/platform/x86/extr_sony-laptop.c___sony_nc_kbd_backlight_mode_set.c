
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int ssize_t ;
struct TYPE_2__ {int base; int mode; int handle; } ;


 int EINVAL ;
 int EIO ;
 TYPE_1__* kbdbl_ctl ;
 scalar_t__ sony_call_snc_handle (int ,int,int*) ;

__attribute__((used)) static ssize_t __sony_nc_kbd_backlight_mode_set(u8 value)
{
 int result;

 if (value > 2)
  return -EINVAL;

 if (sony_call_snc_handle(kbdbl_ctl->handle,
    (value << 0x10) | (kbdbl_ctl->base), &result))
  return -EIO;


 if (value != 1)
  sony_call_snc_handle(kbdbl_ctl->handle,
    (value << 0x0f) | (kbdbl_ctl->base + 0x100),
    &result);

 kbdbl_ctl->mode = value;

 return 0;
}
