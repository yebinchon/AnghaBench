
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
typedef int u8 ;
typedef int u32 ;
struct rtl8187_priv {int io_mutex; TYPE_1__* io_dmabuf; int udev; } ;
typedef int __le32 ;
struct TYPE_2__ {int bits32; } ;


 int HZ ;
 int RTL8187_REQT_WRITE ;
 int RTL8187_REQ_SET_REG ;
 int cpu_to_le32 (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int ,int ,unsigned long,int,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

void rtl818x_iowrite32_idx(struct rtl8187_priv *priv,
    __le32 *addr, u32 val, u8 idx)
{
 mutex_lock(&priv->io_mutex);

 priv->io_dmabuf->bits32 = cpu_to_le32(val);
 usb_control_msg(priv->udev, usb_sndctrlpipe(priv->udev, 0),
   RTL8187_REQ_SET_REG, RTL8187_REQT_WRITE,
   (unsigned long)addr, idx & 0x03,
   &priv->io_dmabuf->bits32, sizeof(val), HZ / 2);

 mutex_unlock(&priv->io_mutex);
}
