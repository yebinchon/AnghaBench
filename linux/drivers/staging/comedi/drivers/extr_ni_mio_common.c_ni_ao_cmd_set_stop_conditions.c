
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int ao_mode3; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {int dummy; } ;


 int NISTC_AO_MODE3_REG ;
 int NISTC_AO_MODE3_STOP_ON_OVERRUN_ERR ;
 int NISTC_RESET_AO_CFG_END ;
 int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void ni_ao_cmd_set_stop_conditions(struct comedi_device *dev,
       const struct comedi_cmd *cmd)
{
 struct ni_private *devpriv = dev->private;

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);

 devpriv->ao_mode3 |= NISTC_AO_MODE3_STOP_ON_OVERRUN_ERR;
 ni_stc_writew(dev, devpriv->ao_mode3, NISTC_AO_MODE3_REG);







 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}
