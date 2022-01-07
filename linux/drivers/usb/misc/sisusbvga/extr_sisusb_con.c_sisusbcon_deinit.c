
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {size_t vc_num; } ;
struct sisusb_usb_data {int kref; int lock; int * font_backup; scalar_t__* havethisconsole; } ;


 int MAX_NR_CONSOLES ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ** mysisusbs ;
 int sisusb_delete ;
 struct sisusb_usb_data* sisusb_get_sisusb (size_t) ;
 int vfree (int *) ;

__attribute__((used)) static void
sisusbcon_deinit(struct vc_data *c)
{
 struct sisusb_usb_data *sisusb;
 int i;





 sisusb = sisusb_get_sisusb(c->vc_num);
 if (!sisusb)
  return;

 mutex_lock(&sisusb->lock);


 mysisusbs[c->vc_num] = ((void*)0);

 sisusb->havethisconsole[c->vc_num] = 0;


 if (sisusb->font_backup) {
  for(i = 0; i < MAX_NR_CONSOLES; i++) {
   if (sisusb->havethisconsole[c->vc_num])
    break;
  }
  if (i == MAX_NR_CONSOLES) {
   vfree(sisusb->font_backup);
   sisusb->font_backup = ((void*)0);
  }
 }

 mutex_unlock(&sisusb->lock);


 kref_put(&sisusb->kref, sisusb_delete);
}
