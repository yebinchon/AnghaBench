
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tsi721_device {scalar_t__ regs; } ;
struct rio_mport {struct tsi721_device* priv; } ;


 int EINVAL ;
 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static int tsi721_lcread(struct rio_mport *mport, int index, u32 offset,
    int len, u32 *data)
{
 struct tsi721_device *priv = mport->priv;

 if (len != sizeof(u32))
  return -EINVAL;

 *data = ioread32(priv->regs + offset);

 return 0;
}
