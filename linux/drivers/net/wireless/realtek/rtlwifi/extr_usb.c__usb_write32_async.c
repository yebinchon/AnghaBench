
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device* dev; } ;
struct rtl_priv {TYPE_1__ io; } ;
struct device {int dummy; } ;


 int _usb_write_async (int ,int ,int ,int) ;
 int to_usb_device (struct device*) ;

__attribute__((used)) static void _usb_write32_async(struct rtl_priv *rtlpriv, u32 addr, u32 val)
{
 struct device *dev = rtlpriv->io.dev;

 _usb_write_async(to_usb_device(dev), addr, val, 4);
}
