
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl8187_priv {TYPE_2__* map; int io_mutex; TYPE_1__* io_dmabuf; int udev; } ;
struct ieee80211_hw {struct rtl8187_priv* priv; } ;
typedef int data ;
typedef int __le16 ;
struct TYPE_4__ {int RFPinsSelect; int RFPinsOutput; int RFPinsEnable; } ;
struct TYPE_3__ {int bits16; } ;


 int HZ ;
 int RTL8187_REQT_WRITE ;
 int RTL8187_REQ_SET_REG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl818x_ioread16 (struct rtl8187_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8187_priv*,int *,int) ;
 int udelay (int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void rtl8225_write_8051(struct ieee80211_hw *dev, u8 addr, __le16 data)
{
 struct rtl8187_priv *priv = dev->priv;
 u16 reg80, reg82, reg84;

 reg80 = rtl818x_ioread16(priv, &priv->map->RFPinsOutput);
 reg82 = rtl818x_ioread16(priv, &priv->map->RFPinsEnable);
 reg84 = rtl818x_ioread16(priv, &priv->map->RFPinsSelect);

 reg80 &= ~(0x3 << 2);
 reg84 &= ~0xF;

 rtl818x_iowrite16(priv, &priv->map->RFPinsEnable, reg82 | 0x0007);
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, reg84 | 0x0007);
 udelay(10);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 udelay(2);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80);
 udelay(10);

 mutex_lock(&priv->io_mutex);

 priv->io_dmabuf->bits16 = data;
 usb_control_msg(priv->udev, usb_sndctrlpipe(priv->udev, 0),
   RTL8187_REQ_SET_REG, RTL8187_REQT_WRITE,
   addr, 0x8225, &priv->io_dmabuf->bits16, sizeof(data),
   HZ / 2);

 mutex_unlock(&priv->io_mutex);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 udelay(10);

 rtl818x_iowrite16(priv, &priv->map->RFPinsOutput, reg80 | (1 << 2));
 rtl818x_iowrite16(priv, &priv->map->RFPinsSelect, reg84);
}
