
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int S626_I2C_BUSY ;
 unsigned int S626_I2C_ERR ;
 int S626_MC2_UPLD_IIC ;
 scalar_t__ S626_P_I2CCTRL ;
 int S626_P_MC2 ;
 int comedi_timeout (struct comedi_device*,int *,int *,int ,int ) ;
 unsigned int readl (scalar_t__) ;
 int s626_i2c_handshake_eoc ;
 int s626_mc_enable (struct comedi_device*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s626_i2c_handshake(struct comedi_device *dev, u32 val)
{
 unsigned int ctrl;
 int ret;


 writel(val, dev->mmio + S626_P_I2CCTRL);





 s626_mc_enable(dev, S626_MC2_UPLD_IIC, S626_P_MC2);
 ret = comedi_timeout(dev, ((void*)0), ((void*)0), s626_i2c_handshake_eoc, 0);
 if (ret)
  return ret;


 do {
  ctrl = readl(dev->mmio + S626_P_I2CCTRL);
 } while ((ctrl & (S626_I2C_BUSY | S626_I2C_ERR)) == S626_I2C_BUSY);


 return ctrl & S626_I2C_ERR;
}
