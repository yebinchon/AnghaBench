
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_m_series; int ao_mode2; int ao_mode1; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {int stop_arg; } ;


 int NISTC_AO_BC_LOADA_REG ;
 int NISTC_AO_CMD1_BC_LOAD ;
 int NISTC_AO_CMD1_REG ;
 int NISTC_AO_CMD1_UC_LOAD ;
 int NISTC_AO_MODE1_REG ;
 int NISTC_AO_MODE2_BC_INIT_LOAD_SRC ;
 int NISTC_AO_MODE2_REG ;
 int NISTC_AO_MODE2_UC_INIT_LOAD_SRC ;
 int NISTC_AO_UC_LOADA_REG ;
 int NISTC_RESET_AO_CFG_END ;
 int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int ni_stc_writel (struct comedi_device*,unsigned int,int ) ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void ni_ao_cmd_set_counters(struct comedi_device *dev,
       const struct comedi_cmd *cmd)
{
 struct ni_private *devpriv = dev->private;


 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);







 ni_stc_writew(dev, devpriv->ao_mode1, NISTC_AO_MODE1_REG);



 devpriv->ao_mode2 &= ~NISTC_AO_MODE2_BC_INIT_LOAD_SRC;
 ni_stc_writew(dev, devpriv->ao_mode2, NISTC_AO_MODE2_REG);






 ni_stc_writel(dev, 0, NISTC_AO_BC_LOADA_REG);


 ni_stc_writew(dev, NISTC_AO_CMD1_BC_LOAD, NISTC_AO_CMD1_REG);



 devpriv->ao_mode2 &= ~NISTC_AO_MODE2_UC_INIT_LOAD_SRC;
 ni_stc_writew(dev, devpriv->ao_mode2, NISTC_AO_MODE2_REG);
 {
  unsigned int stop_arg = cmd->stop_arg > 0 ?
   (cmd->stop_arg & 0xffffff) : 0xffffff;

  if (devpriv->is_m_series) {




   ni_stc_writel(dev, stop_arg - 1, NISTC_AO_UC_LOADA_REG);


   ni_stc_writew(dev, NISTC_AO_CMD1_UC_LOAD,
          NISTC_AO_CMD1_REG);
  } else {
   ni_stc_writel(dev, stop_arg, NISTC_AO_UC_LOADA_REG);


   ni_stc_writew(dev, NISTC_AO_CMD1_UC_LOAD,
          NISTC_AO_CMD1_REG);





   ni_stc_writel(dev, stop_arg - 1, NISTC_AO_UC_LOADA_REG);
  }
 }

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}
