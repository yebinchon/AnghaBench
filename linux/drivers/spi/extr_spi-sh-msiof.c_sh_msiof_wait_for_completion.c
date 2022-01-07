
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_msiof_spi_priv {TYPE_1__* pdev; scalar_t__ slave_aborted; int ctlr; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINTR ;
 int ETIMEDOUT ;
 int HZ ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 scalar_t__ spi_controller_is_slave (int ) ;
 scalar_t__ wait_for_completion_interruptible (struct completion*) ;
 int wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int sh_msiof_wait_for_completion(struct sh_msiof_spi_priv *p,
     struct completion *x)
{
 if (spi_controller_is_slave(p->ctlr)) {
  if (wait_for_completion_interruptible(x) ||
      p->slave_aborted) {
   dev_dbg(&p->pdev->dev, "interrupted\n");
   return -EINTR;
  }
 } else {
  if (!wait_for_completion_timeout(x, HZ)) {
   dev_err(&p->pdev->dev, "timeout\n");
   return -ETIMEDOUT;
  }
 }

 return 0;
}
