
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int nowayout ;
 int pnx833x_wdt_alive ;
 int pnx833x_wdt_stop () ;

__attribute__((used)) static int pnx833x_wdt_release(struct inode *inode, struct file *file)
{


 if (!nowayout)
  pnx833x_wdt_stop();

 clear_bit(0, &pnx833x_wdt_alive);
 return 0;
}
