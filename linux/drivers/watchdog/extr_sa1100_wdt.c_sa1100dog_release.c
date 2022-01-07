
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int,int *) ;
 int pr_crit (char*) ;
 int sa1100wdt_users ;

__attribute__((used)) static int sa1100dog_release(struct inode *inode, struct file *file)
{
 pr_crit("Device closed - timer will not stop\n");
 clear_bit(1, &sa1100wdt_users);
 return 0;
}
