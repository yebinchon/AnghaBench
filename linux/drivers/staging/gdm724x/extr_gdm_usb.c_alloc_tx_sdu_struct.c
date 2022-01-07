
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx_sdu {int buf; } ;


 int GFP_KERNEL ;
 int SDU_BUF_SIZE ;
 int kfree (struct usb_tx_sdu*) ;
 int kmalloc (int ,int ) ;
 struct usb_tx_sdu* kzalloc (int,int ) ;

__attribute__((used)) static struct usb_tx_sdu *alloc_tx_sdu_struct(void)
{
 struct usb_tx_sdu *t_sdu;

 t_sdu = kzalloc(sizeof(*t_sdu), GFP_KERNEL);
 if (!t_sdu)
  return ((void*)0);

 t_sdu->buf = kmalloc(SDU_BUF_SIZE, GFP_KERNEL);
 if (!t_sdu->buf) {
  kfree(t_sdu);
  return ((void*)0);
 }

 return t_sdu;
}
