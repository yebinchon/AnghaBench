
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsi721_device {int idb_work; scalar_t__ regs; } ;


 int IDB_QUEUE ;
 scalar_t__ TSI721_SR_CHINTE (int ) ;
 int TSI721_SR_CHINT_IDBQRCV ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static int
tsi721_dbell_handler(struct tsi721_device *priv)
{
 u32 regval;


 regval = ioread32(priv->regs + TSI721_SR_CHINTE(IDB_QUEUE));
 regval &= ~TSI721_SR_CHINT_IDBQRCV;
 iowrite32(regval,
  priv->regs + TSI721_SR_CHINTE(IDB_QUEUE));

 schedule_work(&priv->idb_work);

 return 0;
}
