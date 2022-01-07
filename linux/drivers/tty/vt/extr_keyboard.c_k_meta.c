
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int VC_META ;
 int kbd ;
 int put_queue (struct vc_data*,unsigned char) ;
 scalar_t__ vc_kbd_mode (int ,int ) ;

__attribute__((used)) static void k_meta(struct vc_data *vc, unsigned char value, char up_flag)
{
 if (up_flag)
  return;

 if (vc_kbd_mode(kbd, VC_META)) {
  put_queue(vc, '\033');
  put_queue(vc, value);
 } else
  put_queue(vc, value | 0x80);
}
