
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_file_private {int dummy; } ;
struct file {struct tty_file_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tty_file_private* kmalloc (int,int ) ;

int tty_alloc_file(struct file *file)
{
 struct tty_file_private *priv;

 priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 file->private_data = priv;

 return 0;
}
