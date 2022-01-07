
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int files_lock; } ;
struct tty_file_private {int list; struct tty_struct* tty; } ;
struct file {struct tty_file_private* private_data; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_free_file (struct file*) ;

__attribute__((used)) static void tty_del_file(struct file *file)
{
 struct tty_file_private *priv = file->private_data;
 struct tty_struct *tty = priv->tty;

 spin_lock(&tty->files_lock);
 list_del(&priv->list);
 spin_unlock(&tty->files_lock);
 tty_free_file(file);
}
