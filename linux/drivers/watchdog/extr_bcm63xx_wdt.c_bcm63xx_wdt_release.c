
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int inuse; } ;


 TYPE_1__ bcm63xx_wdt_device ;
 int bcm63xx_wdt_pause () ;
 int bcm63xx_wdt_start () ;
 int clear_bit (int ,int *) ;
 int expect_close ;
 int pr_crit (char*) ;

__attribute__((used)) static int bcm63xx_wdt_release(struct inode *inode, struct file *file)
{
 if (expect_close == 42)
  bcm63xx_wdt_pause();
 else {
  pr_crit("Unexpected close, not stopping watchdog!\n");
  bcm63xx_wdt_start();
 }
 clear_bit(0, &bcm63xx_wdt_device.inuse);
 expect_close = 0;
 return 0;
}
