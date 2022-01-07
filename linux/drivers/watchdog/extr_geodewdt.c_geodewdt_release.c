
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int THIS_MODULE ;
 int WDT_FLAGS_OPEN ;
 int WDT_FLAGS_ORPHAN ;
 int clear_bit (int ,int *) ;
 int geodewdt_disable () ;
 int geodewdt_ping () ;
 int module_put (int ) ;
 int pr_crit (char*) ;
 scalar_t__ safe_close ;
 int set_bit (int ,int *) ;
 int wdt_flags ;

__attribute__((used)) static int geodewdt_release(struct inode *inode, struct file *file)
{
 if (safe_close) {
  geodewdt_disable();
  module_put(THIS_MODULE);
 } else {
  pr_crit("Unexpected close - watchdog is not stopping\n");
  geodewdt_ping();

  set_bit(WDT_FLAGS_ORPHAN, &wdt_flags);
 }

 clear_bit(WDT_FLAGS_OPEN, &wdt_flags);
 safe_close = 0;
 return 0;
}
