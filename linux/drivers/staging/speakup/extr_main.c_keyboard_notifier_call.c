
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_mode; } ;
struct notifier_block {int dummy; } ;
struct keyboard_notifier_param {int value; int shift; int down; struct vc_data* vc; } ;







 scalar_t__ KD_GRAPHICS ;
 int KTYP (int) ;





 unsigned char KVAL (int) ;
 int NOTIFY_OK ;
 int NOTIFY_STOP ;
 int do_handle_cursor (struct vc_data*,unsigned char,int) ;
 int do_handle_latin (struct vc_data*,unsigned char,int) ;
 int do_handle_shift (struct vc_data*,unsigned char,int) ;
 int do_handle_spec (struct vc_data*,unsigned char,int) ;
 int in_keyboard_notifier ;
 int pre_handle_cursor (struct vc_data*,unsigned char,int) ;
 scalar_t__ speakup_fake_key_pressed () ;
 int speakup_key (struct vc_data*,int ,int,int,int) ;

__attribute__((used)) static int keyboard_notifier_call(struct notifier_block *nb,
      unsigned long code, void *_param)
{
 struct keyboard_notifier_param *param = _param;
 struct vc_data *vc = param->vc;
 int up = !param->down;
 int ret = NOTIFY_OK;
 static int keycode;

 in_keyboard_notifier = 1;

 if (vc->vc_mode == KD_GRAPHICS)
  goto out;
 if (speakup_fake_key_pressed())
  goto out;

 switch (code) {
 case 137:

  keycode = param->value;
  break;
 case 134:

  break;
 case 133:

  break;
 case 136:
  if (speakup_key(vc, param->shift, keycode, param->value, up))
   ret = NOTIFY_STOP;
  else if (KTYP(param->value) == 132)
   ret = pre_handle_cursor(vc, KVAL(param->value), up);
  break;
 case 135:{
   unsigned char type = KTYP(param->value) - 0xf0;
   unsigned char val = KVAL(param->value);

   switch (type) {
   case 129:
    do_handle_shift(vc, val, up);
    break;
   case 131:
   case 130:
    do_handle_latin(vc, val, up);
    break;
   case 132:
    do_handle_cursor(vc, val, up);
    break;
   case 128:
    do_handle_spec(vc, val, up);
    break;
   }
   break;
  }
 }
out:
 in_keyboard_notifier = 0;
 return ret;
}
