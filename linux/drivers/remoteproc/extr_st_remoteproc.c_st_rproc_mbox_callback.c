
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rproc {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IRQ_NONE ;
 int dev_dbg (struct device*,char*,int ) ;
 struct rproc* dev_get_drvdata (struct device*) ;
 scalar_t__ rproc_vq_interrupt (struct rproc*,int ) ;

__attribute__((used)) static void st_rproc_mbox_callback(struct device *dev, u32 msg)
{
 struct rproc *rproc = dev_get_drvdata(dev);

 if (rproc_vq_interrupt(rproc, msg) == IRQ_NONE)
  dev_dbg(dev, "no message was found in vqid %d\n", msg);
}
