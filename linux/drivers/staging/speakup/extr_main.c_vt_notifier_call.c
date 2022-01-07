
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u16 ;
struct vt_notifier_param {char c; struct vc_data* vc; } ;
struct vc_data {int vc_mode; } ;
struct notifier_block {int dummy; } ;


 int GFP_ATOMIC ;
 int KD_TEXT ;
 int NOTIFY_OK ;




 int speakup_allocate (struct vc_data*,int ) ;
 int speakup_bs (struct vc_data*) ;
 int speakup_con_update (struct vc_data*) ;
 int speakup_con_write (struct vc_data*,char*,int) ;
 int speakup_deallocate (struct vc_data*) ;

__attribute__((used)) static int vt_notifier_call(struct notifier_block *nb,
       unsigned long code, void *_param)
{
 struct vt_notifier_param *param = _param;
 struct vc_data *vc = param->vc;

 switch (code) {
 case 131:
  if (vc->vc_mode == KD_TEXT)
   speakup_allocate(vc, GFP_ATOMIC);
  break;
 case 130:
  speakup_deallocate(vc);
  break;
 case 128:
  if (param->c == '\b') {
   speakup_bs(vc);
  } else {
   u16 d = param->c;

   speakup_con_write(vc, &d, 1);
  }
  break;
 case 129:
  speakup_con_update(vc);
  break;
 }
 return NOTIFY_OK;
}
