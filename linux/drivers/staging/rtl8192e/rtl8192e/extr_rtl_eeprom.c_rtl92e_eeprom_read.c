
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8192_priv {scalar_t__ epromtype; } ;
struct net_device {int dummy; } ;


 scalar_t__ EEPROM_93C56 ;
 int EPROM_CMD ;
 int EPROM_CMD_NORMAL ;
 int EPROM_CMD_OPERATING_MODE_SHIFT ;
 int EPROM_CMD_PROGRAM ;
 int EPROM_DELAY ;
 int _rtl92e_eeprom_xfer (struct net_device*,int,int) ;
 int rtl92e_writeb (struct net_device*,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;
 int udelay (int ) ;

u32 rtl92e_eeprom_read(struct net_device *dev, u32 addr)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u32 ret = 0;

 rtl92e_writeb(dev, EPROM_CMD,
        (EPROM_CMD_PROGRAM << EPROM_CMD_OPERATING_MODE_SHIFT));
 udelay(EPROM_DELAY);


 if (priv->epromtype == EEPROM_93C56)
  ret = _rtl92e_eeprom_xfer(dev, (addr & 0xFF) | (0x6 << 8), 11);
 else
  ret = _rtl92e_eeprom_xfer(dev, (addr & 0x3F) | (0x6 << 6), 9);

 rtl92e_writeb(dev, EPROM_CMD,
        (EPROM_CMD_NORMAL<<EPROM_CMD_OPERATING_MODE_SHIFT));
 return ret;
}
