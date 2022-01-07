
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; scalar_t__ mmio; } ;


 int S626_MC2_UPLD_DEBI ;
 int S626_PSR_DEBI_S ;
 int S626_P_MC2 ;
 scalar_t__ S626_P_PSR ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int s626_mc_enable (struct comedi_device*,int ,int ) ;
 scalar_t__ s626_mc_test (struct comedi_device*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void s626_debi_transfer(struct comedi_device *dev)
{
 static const int timeout = 10000;
 int i;


 s626_mc_enable(dev, S626_MC2_UPLD_DEBI, S626_P_MC2);





 for (i = 0; i < timeout; i++) {
  if (s626_mc_test(dev, S626_MC2_UPLD_DEBI, S626_P_MC2))
   break;
  udelay(1);
 }
 if (i == timeout)
  dev_err(dev->class_dev,
   "Timeout while uploading to DEBI control register\n");


 for (i = 0; i < timeout; i++) {
  if (!(readl(dev->mmio + S626_P_PSR) & S626_PSR_DEBI_S))
   break;
  udelay(1);
 }
 if (i == timeout)
  dev_err(dev->class_dev, "DEBI transfer timeout\n");
}
