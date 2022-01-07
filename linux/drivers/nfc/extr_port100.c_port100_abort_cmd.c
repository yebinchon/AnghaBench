
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port100 {int in_urb; } ;
struct nfc_digital_dev {int dummy; } ;


 struct port100* nfc_digital_get_drvdata (struct nfc_digital_dev*) ;
 int port100_send_ack (struct port100*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void port100_abort_cmd(struct nfc_digital_dev *ddev)
{
 struct port100 *dev = nfc_digital_get_drvdata(ddev);


 port100_send_ack(dev);


 usb_kill_urb(dev->in_urb);
}
