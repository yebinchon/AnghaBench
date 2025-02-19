
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int writen_sync; int read32_sync; int read16_sync; int read8_sync; int write32_async; int write16_async; int write8_async; int bb_mutex; struct device* dev; } ;
struct rtl_priv {TYPE_1__ io; } ;
struct ieee80211_hw {int dummy; } ;
struct device {int dummy; } ;


 int _usb_read16_sync ;
 int _usb_read32_sync ;
 int _usb_read8_sync ;
 int _usb_write16_async ;
 int _usb_write32_async ;
 int _usb_write8_async ;
 int _usb_writen_sync ;
 int mutex_init (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl_usb_io_handler_init(struct device *dev,
         struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->io.dev = dev;
 mutex_init(&rtlpriv->io.bb_mutex);
 rtlpriv->io.write8_async = _usb_write8_async;
 rtlpriv->io.write16_async = _usb_write16_async;
 rtlpriv->io.write32_async = _usb_write32_async;
 rtlpriv->io.read8_sync = _usb_read8_sync;
 rtlpriv->io.read16_sync = _usb_read16_sync;
 rtlpriv->io.read32_sync = _usb_read32_sync;
 rtlpriv->io.writen_sync = _usb_writen_sync;
}
