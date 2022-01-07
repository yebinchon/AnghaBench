
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int at91_wdt_stop () ;
 int at91wdt_busy ;
 int clear_bit (int ,int *) ;
 int nowayout ;

__attribute__((used)) static int at91_wdt_close(struct inode *inode, struct file *file)
{

 if (!nowayout)
  at91_wdt_stop();

 clear_bit(0, &at91wdt_busy);
 return 0;
}
