
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ logical_base; scalar_t__ physical_base; } ;
struct TYPE_3__ {scalar_t__ physical_base; } ;
struct s626_private {int i2c_adrs; int* dac_wbuf; TYPE_2__ ana_buf; TYPE_1__ rps_buf; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ mmio; struct comedi_subdevice* read_subdev; struct s626_private* private; } ;
typedef scalar_t__ dma_addr_t ;


 int S626_ACON1_ADCSTART ;
 int S626_ACON1_DACSTART ;
 int S626_ACON2_INIT ;
 int S626_DAC_CHANNELS ;
 int S626_DAC_WDMABUF_OS ;
 int S626_DEBI_CFG_INTEL ;
 int S626_DEBI_CFG_SLAVE16 ;
 int S626_DEBI_CFG_TOUT_BIT ;
 int S626_DEBI_PAGE_DISABLE ;
 int S626_DEBI_SWAP ;
 int S626_DEBI_TOUT ;
 int S626_EOPL ;
 int S626_EOS ;
 int S626_GPIO1_HI ;
 int S626_GPIO_BASE ;
 int S626_I2C_ABORT ;
 int S626_I2C_CLKSEL ;
 int S626_LF_A2 ;
 int S626_LP_RDMISC2 ;
 int S626_MC1_AUDIO ;
 int S626_MC1_DEBI ;
 int S626_MC1_I2C ;
 int S626_MC2_UPLD_IIC ;
 int S626_MISC2_BATT_ENABLE ;
 scalar_t__ S626_P_ACON1 ;
 scalar_t__ S626_P_ACON2 ;
 scalar_t__ S626_P_BASEA2_OUT ;
 scalar_t__ S626_P_DEBICFG ;
 scalar_t__ S626_P_DEBIPAGE ;
 scalar_t__ S626_P_GPIO ;
 scalar_t__ S626_P_I2CSTAT ;
 int S626_P_MC1 ;
 int S626_P_MC2 ;
 scalar_t__ S626_P_PAGEA2_OUT ;
 scalar_t__ S626_P_PCI_BT_A ;
 scalar_t__ S626_P_PROTA2_OUT ;
 scalar_t__ S626_P_RPS1_TOUT ;
 scalar_t__ S626_P_RPSADDR1 ;
 scalar_t__ S626_P_RPSPAGE1 ;
 scalar_t__ S626_P_TSL1 ;
 int S626_RSD1 ;
 int S626_RSD3 ;
 int S626_SIB_A1 ;
 int S626_SIB_A2 ;
 scalar_t__ S626_VECTPORT (int) ;
 int S626_XSD2 ;
 int comedi_timeout (struct comedi_device*,int *,int *,int ,int ) ;
 int s626_ai_rinsn (struct comedi_device*,struct comedi_subdevice*,int *,unsigned int*) ;
 int s626_counters_init (struct comedi_device*) ;
 int s626_debi_read (struct comedi_device*,int ) ;
 int s626_dio_init (struct comedi_device*) ;
 int s626_i2c_handshake_eoc ;
 int s626_load_trim_dacs (struct comedi_device*) ;
 int s626_mc_enable (struct comedi_device*,int,int ) ;
 int s626_reset_adc (struct comedi_device*,int *) ;
 int s626_set_dac (struct comedi_device*,int,int ) ;
 int s626_write_misc2 (struct comedi_device*,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s626_initialize(struct comedi_device *dev)
{
 struct s626_private *devpriv = dev->private;
 dma_addr_t phys_buf;
 u16 chan;
 int i;
 int ret;


 s626_mc_enable(dev, S626_MC1_DEBI | S626_MC1_AUDIO | S626_MC1_I2C,
         S626_P_MC1);
 writel(S626_DEBI_CFG_SLAVE16 |
        (S626_DEBI_TOUT << S626_DEBI_CFG_TOUT_BIT) | S626_DEBI_SWAP |
        S626_DEBI_CFG_INTEL, dev->mmio + S626_P_DEBICFG);


 writel(S626_DEBI_PAGE_DISABLE, dev->mmio + S626_P_DEBIPAGE);


 writel(S626_GPIO_BASE | S626_GPIO1_HI, dev->mmio + S626_P_GPIO);


 devpriv->i2c_adrs = 0xA0;





 writel(S626_I2C_CLKSEL | S626_I2C_ABORT,
        dev->mmio + S626_P_I2CSTAT);
 s626_mc_enable(dev, S626_MC2_UPLD_IIC, S626_P_MC2);
 ret = comedi_timeout(dev, ((void*)0), ((void*)0), s626_i2c_handshake_eoc, 0);
 if (ret)
  return ret;





 for (i = 0; i < 2; i++) {
  writel(S626_I2C_CLKSEL, dev->mmio + S626_P_I2CSTAT);
  s626_mc_enable(dev, S626_MC2_UPLD_IIC, S626_P_MC2);
  ret = comedi_timeout(dev, ((void*)0),
         ((void*)0), s626_i2c_handshake_eoc, 0);
  if (ret)
   return ret;
 }







 writel(S626_ACON2_INIT, dev->mmio + S626_P_ACON2);







 writel(S626_RSD1 | S626_SIB_A1, dev->mmio + S626_P_TSL1);
 writel(S626_RSD1 | S626_SIB_A1 | S626_EOS,
        dev->mmio + S626_P_TSL1 + 4);


 writel(S626_ACON1_ADCSTART, dev->mmio + S626_P_ACON1);






 writel((u32)devpriv->rps_buf.physical_base,
        dev->mmio + S626_P_RPSADDR1);

 writel(0, dev->mmio + S626_P_RPSPAGE1);

 writel(0, dev->mmio + S626_P_RPS1_TOUT);
 writel(0, dev->mmio + S626_P_PCI_BT_A);







 phys_buf = devpriv->ana_buf.physical_base +
     (S626_DAC_WDMABUF_OS * sizeof(u32));
 writel((u32)phys_buf, dev->mmio + S626_P_BASEA2_OUT);
 writel((u32)(phys_buf + sizeof(u32)),
        dev->mmio + S626_P_PROTA2_OUT);





 devpriv->dac_wbuf = (u32 *)devpriv->ana_buf.logical_base +
       S626_DAC_WDMABUF_OS;







 writel(8, dev->mmio + S626_P_PAGEA2_OUT);
 writel(S626_XSD2 | S626_RSD3 | S626_SIB_A2 | S626_EOS,
        dev->mmio + S626_VECTPORT(0));
 writel(S626_LF_A2, dev->mmio + S626_VECTPORT(1));


 writel(S626_ACON1_DACSTART, dev->mmio + S626_P_ACON1);






 s626_load_trim_dacs(dev);
 ret = s626_load_trim_dacs(dev);
 if (ret)
  return ret;
 for (chan = 0; chan < S626_DAC_CHANNELS; chan++) {
  ret = s626_set_dac(dev, chan, 0);
  if (ret)
   return ret;
 }


 s626_counters_init(dev);







 s626_write_misc2(dev, (s626_debi_read(dev, S626_LP_RDMISC2) &
          S626_MISC2_BATT_ENABLE));


 s626_dio_init(dev);

 return 0;
}
