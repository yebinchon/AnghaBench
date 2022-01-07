
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct apci3120_private* private; } ;
struct apci3120_private {scalar_t__ addon; scalar_t__ amcc; } ;
struct apci3120_dmabuf {int hw; int use_size; } ;


 int AGCSTS_RESET_A2P_FIFO ;
 int AGCSTS_TC_ENABLE ;
 int AINT_WRITE_COMPL ;
 scalar_t__ AMCC_OP_REG_AGCSTS ;
 scalar_t__ AMCC_OP_REG_AMWAR ;
 scalar_t__ AMCC_OP_REG_AMWTC ;
 scalar_t__ AMCC_OP_REG_INTCSR ;
 scalar_t__ AMCC_OP_REG_MCSR ;
 int APCI3120_ADDON_CTRL_A2P_FIFO_ENA ;
 int APCI3120_ADDON_CTRL_AMWEN_ENA ;
 scalar_t__ APCI3120_ADDON_CTRL_REG ;
 int APCI3120_FIFO_ADVANCE_ON_BYTE_2 ;
 int EN_A2P_TRANSFERS ;
 int RESET_A2P_FLAGS ;
 int apci3120_addon_write (struct comedi_device*,int,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void apci3120_init_dma(struct comedi_device *dev,
         struct apci3120_dmabuf *dmabuf)
{
 struct apci3120_private *devpriv = dev->private;


 outl(AGCSTS_TC_ENABLE | AGCSTS_RESET_A2P_FIFO,
      devpriv->amcc + AMCC_OP_REG_AGCSTS);


 apci3120_addon_write(dev, AGCSTS_TC_ENABLE | AGCSTS_RESET_A2P_FIFO,
        AMCC_OP_REG_AGCSTS);


 outl(RESET_A2P_FLAGS | EN_A2P_TRANSFERS,
      devpriv->amcc + AMCC_OP_REG_MCSR);


 apci3120_addon_write(dev, dmabuf->hw, AMCC_OP_REG_AMWAR);


 apci3120_addon_write(dev, dmabuf->use_size, AMCC_OP_REG_AMWTC);


 outl(APCI3120_FIFO_ADVANCE_ON_BYTE_2 | AINT_WRITE_COMPL,
      devpriv->amcc + AMCC_OP_REG_INTCSR);


 outw(APCI3120_ADDON_CTRL_AMWEN_ENA | APCI3120_ADDON_CTRL_A2P_FIFO_ENA,
      devpriv->addon + APCI3120_ADDON_CTRL_REG);
}
