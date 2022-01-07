
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wd719x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int WD719X_AMR_COMMAND ;
 scalar_t__ WD719X_CMD_READY ;
 int WD719X_WAIT_FOR_CMD_READY ;
 int dev_err (int *,char*,scalar_t__) ;
 int udelay (int) ;
 scalar_t__ wd719x_readb (struct wd719x*,int ) ;

__attribute__((used)) static inline int wd719x_wait_ready(struct wd719x *wd)
{
 int i = 0;

 do {
  if (wd719x_readb(wd, WD719X_AMR_COMMAND) == WD719X_CMD_READY)
   return 0;
  udelay(1);
 } while (i++ < WD719X_WAIT_FOR_CMD_READY);

 dev_err(&wd->pdev->dev, "command register is not ready: 0x%02x\n",
  wd719x_readb(wd, WD719X_AMR_COMMAND));

 return -ETIMEDOUT;
}
