
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct console_data* private_data; } ;
struct console_data {int map_addr; } ;


 int iounmap (int ) ;
 int kfree (struct console_data*) ;

__attribute__((used)) static int dpaa2_console_close(struct inode *node, struct file *fp)
{
 struct console_data *cd = fp->private_data;

 iounmap(cd->map_addr);
 kfree(cd);
 return 0;
}
