
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s626_private {int i2c_adrs; } ;
struct comedi_device {scalar_t__ mmio; struct s626_private* private; } ;


 int S626_I2C_ATTRNOP ;
 int S626_I2C_ATTRSTART ;
 int S626_I2C_ATTRSTOP ;
 int S626_I2C_B0 (int ,int ) ;
 int S626_I2C_B1 (int ,int) ;
 int S626_I2C_B2 (int ,int) ;
 scalar_t__ S626_P_I2CCTRL ;
 int readl (scalar_t__) ;
 scalar_t__ s626_i2c_handshake (struct comedi_device*,int) ;

__attribute__((used)) static u8 s626_i2c_read(struct comedi_device *dev, u8 addr)
{
 struct s626_private *devpriv = dev->private;







 if (s626_i2c_handshake(dev, S626_I2C_B2(S626_I2C_ATTRSTART,
      devpriv->i2c_adrs) |
        S626_I2C_B1(S626_I2C_ATTRSTOP, addr) |
        S626_I2C_B0(S626_I2C_ATTRNOP, 0)))

  return 0;







 if (s626_i2c_handshake(dev, S626_I2C_B2(S626_I2C_ATTRSTART,
      (devpriv->i2c_adrs | 1)) |
        S626_I2C_B1(S626_I2C_ATTRSTOP, 0) |
        S626_I2C_B0(S626_I2C_ATTRNOP, 0)))

  return 0;

 return (readl(dev->mmio + S626_P_I2CCTRL) >> 16) & 0xff;
}
