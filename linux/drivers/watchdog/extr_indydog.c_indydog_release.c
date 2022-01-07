
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int indydog_alive ;
 int indydog_stop () ;
 int nowayout ;

__attribute__((used)) static int indydog_release(struct inode *inode, struct file *file)
{


 if (!nowayout)
  indydog_stop();
 clear_bit(0, &indydog_alive);
 return 0;
}
