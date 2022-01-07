
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ rgout0_usage; int rtsi_shared_mux_usage; scalar_t__ rtsi_shared_mux_reg; int clock_and_fout2; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;


 int COMEDI_INPUT ;
 int NI_MIO_INTERNAL_CLOCK ;
 int NI_M_CLK_FOUT2_RTSI_10MHZ ;
 int * default_rtsi_routing ;
 int dev_err (int ,char*) ;
 int memset (int ,int ,int) ;
 scalar_t__ ni_set_master_clock (struct comedi_device*,int ,int ) ;
 int ni_set_rtsi_direction (struct comedi_device*,int,int ) ;
 int ni_set_rtsi_routing (struct comedi_device*,int,int ) ;
 int set_ith_rtsi_brd_reg (int,int ,struct comedi_device*) ;
 int set_rgout0_reg (int ,struct comedi_device*) ;

__attribute__((used)) static void ni_rtsi_init(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 int i;
 devpriv->clock_and_fout2 = NI_M_CLK_FOUT2_RTSI_10MHZ;

 if (ni_set_master_clock(dev, NI_MIO_INTERNAL_CLOCK, 0) < 0)
  dev_err(dev->class_dev, "ni_set_master_clock failed, bug?\n");


 for (i = 0; i < 8; ++i) {
  ni_set_rtsi_direction(dev, i, COMEDI_INPUT);
  ni_set_rtsi_routing(dev, i, default_rtsi_routing[i]);
 }
 devpriv->rtsi_shared_mux_reg = 0;
 for (i = 0; i < 4; ++i)
  set_ith_rtsi_brd_reg(i, 0, dev);
 memset(devpriv->rtsi_shared_mux_usage, 0,
        sizeof(devpriv->rtsi_shared_mux_usage));


 devpriv->rgout0_usage = 0;
 set_rgout0_reg(0, dev);
}
