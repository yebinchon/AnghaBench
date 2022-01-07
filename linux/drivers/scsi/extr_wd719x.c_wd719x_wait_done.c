
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wd719x {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ETIMEDOUT ;
 int WD719X_AMR_INT_STATUS ;
 int WD719X_AMR_SCB_ERROR ;
 scalar_t__ WD719X_INT_NOERRORS ;
 scalar_t__ WD719X_SUE_RESET ;
 scalar_t__ WD719X_SUE_TERM ;
 int dev_err (int *,char*,...) ;
 int udelay (int) ;
 scalar_t__ wd719x_readb (struct wd719x*,int ) ;

__attribute__((used)) static inline int wd719x_wait_done(struct wd719x *wd, int timeout)
{
 u8 status;

 while (timeout > 0) {
  status = wd719x_readb(wd, WD719X_AMR_INT_STATUS);
  if (status)
   break;
  timeout--;
  udelay(1);
 }

 if (timeout <= 0) {
  dev_err(&wd->pdev->dev, "direct command timed out\n");
  return -ETIMEDOUT;
 }

 if (status != WD719X_INT_NOERRORS) {
  u8 sue = wd719x_readb(wd, WD719X_AMR_SCB_ERROR);

  if (sue == WD719X_SUE_TERM)
   return 0;

  if (sue == WD719X_SUE_RESET)
   return 0;
  dev_err(&wd->pdev->dev, "direct command failed, status 0x%02x, SUE 0x%02x\n",
   status, sue);
  return -EIO;
 }

 return 0;
}
