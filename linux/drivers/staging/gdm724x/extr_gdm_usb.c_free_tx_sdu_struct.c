
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_tx_sdu {struct usb_tx_sdu* buf; } ;


 int kfree (struct usb_tx_sdu*) ;

__attribute__((used)) static void free_tx_sdu_struct(struct usb_tx_sdu *t_sdu)
{
 if (t_sdu) {
  kfree(t_sdu->buf);
  kfree(t_sdu);
 }
}
