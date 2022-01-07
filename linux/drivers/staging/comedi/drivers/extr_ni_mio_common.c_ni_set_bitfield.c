
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int int_a_enable_reg; unsigned int int_b_enable_reg; unsigned int io_bidirection_pin_reg; unsigned int ai_ao_select_reg; unsigned int g0_g1_select_reg; unsigned int cdio_dma_select_reg; int soft_reg_copy_lock; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;
 int dev_err (int ,char*,int) ;
 int ni_stc_writew (struct comedi_device*,unsigned int,int) ;
 int ni_writeb (struct comedi_device*,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void ni_set_bitfield(struct comedi_device *dev, int reg,
       unsigned int bit_mask,
       unsigned int bit_values)
{
 struct ni_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->soft_reg_copy_lock, flags);
 switch (reg) {
 case 133:
  devpriv->int_a_enable_reg &= ~bit_mask;
  devpriv->int_a_enable_reg |= bit_values & bit_mask;
  ni_stc_writew(dev, devpriv->int_a_enable_reg, reg);
  break;
 case 132:
  devpriv->int_b_enable_reg &= ~bit_mask;
  devpriv->int_b_enable_reg |= bit_values & bit_mask;
  ni_stc_writew(dev, devpriv->int_b_enable_reg, reg);
  break;
 case 131:
  devpriv->io_bidirection_pin_reg &= ~bit_mask;
  devpriv->io_bidirection_pin_reg |= bit_values & bit_mask;
  ni_stc_writew(dev, devpriv->io_bidirection_pin_reg, reg);
  break;
 case 130:
  devpriv->ai_ao_select_reg &= ~bit_mask;
  devpriv->ai_ao_select_reg |= bit_values & bit_mask;
  ni_writeb(dev, devpriv->ai_ao_select_reg, reg);
  break;
 case 129:
  devpriv->g0_g1_select_reg &= ~bit_mask;
  devpriv->g0_g1_select_reg |= bit_values & bit_mask;
  ni_writeb(dev, devpriv->g0_g1_select_reg, reg);
  break;
 case 128:
  devpriv->cdio_dma_select_reg &= ~bit_mask;
  devpriv->cdio_dma_select_reg |= bit_values & bit_mask;
  ni_writeb(dev, devpriv->cdio_dma_select_reg, reg);
  break;
 default:
  dev_err(dev->class_dev, "called with invalid register %d\n",
   reg);
  break;
 }
 spin_unlock_irqrestore(&devpriv->soft_reg_copy_lock, flags);
}
