
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_serial {TYPE_2__* dev; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 scalar_t__ FOCUS_PRODUCT_ID_UNI ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int metrousb_is_unidirectional_mode(struct usb_serial *serial)
{
 u16 product_id = le16_to_cpu(serial->dev->descriptor.idProduct);

 return product_id == FOCUS_PRODUCT_ID_UNI;
}
