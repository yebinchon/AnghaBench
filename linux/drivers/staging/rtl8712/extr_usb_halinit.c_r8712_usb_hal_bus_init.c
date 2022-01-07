
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct registry_priv {scalar_t__ chip_version; } ;
struct _adapter {struct registry_priv registrypriv; } ;


 int AFE_MISC ;
 int AFE_MISC_BGEN ;
 int AFE_MISC_I32_EN ;
 int AFE_MISC_MBEN ;
 int AFE_PLL_CTRL ;
 int AFE_XTAL_CTRL ;
 int BIT (int) ;
 int CPU_CLKSEL ;
 int CR ;
 int LDA15_EN ;
 int LDOA15_CTRL ;
 int LDOV12D_CTRL ;
 int LDV12_EN ;
 int PMC_FSM ;
 scalar_t__ RTL8712_1stCUT ;
 scalar_t__ RTL8712_2ndCUT ;
 scalar_t__ RTL8712_3rdCUT ;
 scalar_t__ RTL8712_FPGA ;
 int SPS0_CTRL ;
 int SPS1_CTRL ;
 int SPS1_LDEN ;
 int SPS1_SWEN ;
 int SYS_CLKR ;
 int SYS_CLKSEL ;
 int SYS_FUNC_EN ;
 int SYS_ISO_CTRL ;
 int TCR ;
 int _FAIL ;
 int _SUCCESS ;
 int _TXDMA_EN ;
 int _TXDMA_INIT_VALUE ;
 int msleep (int) ;
 int r8712_read8 (struct _adapter*,int) ;
 int r8712_write32 (struct _adapter*,int,int) ;
 int r8712_write8 (struct _adapter*,int,int) ;
 int udelay (int) ;

u8 r8712_usb_hal_bus_init(struct _adapter *adapter)
{
 u8 val8 = 0;
 u8 ret = _SUCCESS;
 int PollingCnt = 20;
 struct registry_priv *registrypriv = &adapter->registrypriv;

 if (registrypriv->chip_version == RTL8712_FPGA) {
  val8 = 0x01;

  r8712_write8(adapter, SYS_CLKR, val8);
  val8 = r8712_read8(adapter, SPS1_CTRL);
  val8 = val8 | 0x01;

  r8712_write8(adapter, SPS1_CTRL, val8);
  val8 = r8712_read8(adapter, AFE_MISC);
  val8 = val8 | 0x01;

  r8712_write8(adapter, AFE_MISC, val8);
  val8 = r8712_read8(adapter, LDOA15_CTRL);
  val8 = val8 | 0x01;

  r8712_write8(adapter, LDOA15_CTRL, val8);
  val8 = r8712_read8(adapter, SPS1_CTRL);
  val8 = val8 | 0x02;

  r8712_write8(adapter, SPS1_CTRL, val8);
  val8 = r8712_read8(adapter, AFE_MISC);
  val8 = val8 | 0x02;

  r8712_write8(adapter, AFE_MISC, val8);
  val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
  val8 = val8 | 0x08;

  r8712_write8(adapter, SYS_ISO_CTRL + 1, val8);
  val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
  val8 = val8 & 0xEF;

  r8712_write8(adapter, SYS_ISO_CTRL + 1, val8);
  val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
  val8 = val8 & 0xFB;

  r8712_write8(adapter, AFE_XTAL_CTRL + 1, val8);
  val8 = r8712_read8(adapter, AFE_PLL_CTRL);
  val8 = val8 | 0x01;

  r8712_write8(adapter, AFE_PLL_CTRL, val8);
  val8 = 0xEE;

  r8712_write8(adapter, SYS_ISO_CTRL, val8);
  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  val8 = val8 | 0x08;

  r8712_write8(adapter, SYS_CLKR + 1, val8);
  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  val8 = val8 | 0x08;

  r8712_write8(adapter, SYS_FUNC_EN + 1, val8);
  val8 = val8 | 0x80;

  r8712_write8(adapter, SYS_FUNC_EN + 1, val8);
  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  val8 = (val8 | 0x80) & 0xBF;

  r8712_write8(adapter, SYS_CLKR + 1, val8);
  val8 = 0xFC;
  r8712_write8(adapter, CR, val8);
  val8 = 0x37;
  r8712_write8(adapter, CR + 1, val8);

  r8712_write8(adapter, 0x102500ab, r8712_read8(adapter,
        0x102500ab) | BIT(6) | BIT(7));

  r8712_write8(adapter, 0x10250008, r8712_read8(adapter,
        0x10250008) & 0xfffffffb);
 } else if (registrypriv->chip_version == RTL8712_1stCUT) {

  r8712_write8(adapter, SPS0_CTRL + 1, 0x53);
  r8712_write8(adapter, SPS0_CTRL, 0x57);



  val8 = r8712_read8(adapter, AFE_MISC);
  r8712_write8(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
        AFE_MISC_MBEN));

  val8 = r8712_read8(adapter, LDOA15_CTRL);
  r8712_write8(adapter, LDOA15_CTRL, (val8 | LDA15_EN));
  val8 = r8712_read8(adapter, SPS1_CTRL);
  r8712_write8(adapter, SPS1_CTRL, (val8 | SPS1_LDEN));
  msleep(20);

  val8 = r8712_read8(adapter, SPS1_CTRL);
  r8712_write8(adapter, SPS1_CTRL, (val8 | SPS1_SWEN));
  r8712_write32(adapter, SPS1_CTRL, 0x00a7b267);
  val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
  r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 | 0x08));

  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x20));
  val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
  r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 & 0x6F));

  val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
  r8712_write8(adapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));

  val8 = r8712_read8(adapter, AFE_PLL_CTRL);
  r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x11));

  val8 = r8712_read8(adapter, SYS_ISO_CTRL);
  r8712_write8(adapter, SYS_ISO_CTRL, (val8 & 0xEE));

  val8 = r8712_read8(adapter, SYS_CLKR);
  r8712_write8(adapter, SYS_CLKR, val8 & (~SYS_CLKSEL));

  val8 = r8712_read8(adapter, SYS_CLKR);

  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x18));

  r8712_write8(adapter, PMC_FSM, 0x02);

  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x08));

  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x80));

  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
  r8712_write8(adapter, CR, 0xFC);
  r8712_write8(adapter, CR + 1, 0x37);

  val8 = r8712_read8(adapter, 0x1025FE5c);
  r8712_write8(adapter, 0x1025FE5c, (val8 | BIT(7)));
  val8 = r8712_read8(adapter, 0x102500ab);
  r8712_write8(adapter, 0x102500ab, (val8 | BIT(6) | BIT(7)));

  val8 = r8712_read8(adapter, SYS_CLKR);
  r8712_write8(adapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
 } else if (registrypriv->chip_version == RTL8712_2ndCUT ||
     registrypriv->chip_version == RTL8712_3rdCUT) {



  r8712_write8(adapter, 0x37, 0xb0);
  msleep(20);
  r8712_write8(adapter, 0x37, 0x30);




  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  if (val8 & 0x80) {
   val8 &= 0x3f;
   r8712_write8(adapter, SYS_CLKR + 1, val8);
  }
  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  val8 &= 0x73;
  r8712_write8(adapter, SYS_FUNC_EN + 1, val8);
  msleep(20);




  r8712_write8(adapter, SPS0_CTRL + 1, 0x53);
  r8712_write8(adapter, SPS0_CTRL, 0x57);
  val8 = r8712_read8(adapter, AFE_MISC);

  r8712_write8(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN));
  r8712_write8(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
        AFE_MISC_MBEN | AFE_MISC_I32_EN));

  val8 = r8712_read8(adapter, LDOA15_CTRL);
  r8712_write8(adapter, LDOA15_CTRL, (val8 | LDA15_EN));

  val8 = r8712_read8(adapter, LDOV12D_CTRL);
  r8712_write8(adapter, LDOV12D_CTRL, (val8 | LDV12_EN));
  val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
  r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 | 0x08));

  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x20));

  val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
  r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 & 0x68));

  val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
  r8712_write8(adapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));

  val8 = r8712_read8(adapter, AFE_PLL_CTRL);
  r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x11));





  udelay(500);
  r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x51));
  udelay(500);
  r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x11));
  udelay(500);

  val8 = r8712_read8(adapter, SYS_ISO_CTRL);
  r8712_write8(adapter, SYS_ISO_CTRL, (val8 & 0xEE));

  r8712_write8(adapter, SYS_CLKR, 0x00);



  val8 = r8712_read8(adapter, SYS_CLKR);
  r8712_write8(adapter, SYS_CLKR, (val8 | 0xa0));

  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x18));

  r8712_write8(adapter, PMC_FSM, 0x02);

  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x08));

  val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
  r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x80));

  val8 = r8712_read8(adapter, SYS_CLKR + 1);
  r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
  r8712_write8(adapter, CR, 0xFC);
  r8712_write8(adapter, CR + 1, 0x37);

  val8 = r8712_read8(adapter, 0x1025FE5c);
  r8712_write8(adapter, 0x1025FE5c, (val8 | BIT(7)));

  val8 = r8712_read8(adapter, SYS_CLKR);
  r8712_write8(adapter, SYS_CLKR, val8 & (~CPU_CLKSEL));

  r8712_write8(adapter, 0x1025fe1c, 0x80);



  do {
   val8 = r8712_read8(adapter, TCR);
   if ((val8 & _TXDMA_INIT_VALUE) == _TXDMA_INIT_VALUE)
    break;
   udelay(5);
  } while (PollingCnt--);

  if (PollingCnt <= 0) {
   val8 = r8712_read8(adapter, CR);
   r8712_write8(adapter, CR, val8 & (~_TXDMA_EN));
   udelay(2);

   r8712_write8(adapter, CR, val8 | _TXDMA_EN);
  }
 } else {
  ret = _FAIL;
 }
 return ret;
}
