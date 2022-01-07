
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;


 int TESTMODE ;
 int usbhs_write (struct usbhs_priv*,int ,int ) ;

void usbhs_sys_set_test_mode(struct usbhs_priv *priv, u16 mode)
{
 usbhs_write(priv, TESTMODE, mode);
}
