
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_file_private {int dummy; } ;
struct file {struct tty_file_private* private_data; } ;


 int kfree (struct tty_file_private*) ;

void tty_free_file(struct file *file)
{
 struct tty_file_private *priv = file->private_data;

 file->private_data = ((void*)0);
 kfree(priv);
}
