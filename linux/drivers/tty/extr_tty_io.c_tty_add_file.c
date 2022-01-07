
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int files_lock; int tty_files; } ;
struct tty_file_private {int list; struct file* file; struct tty_struct* tty; } ;
struct file {struct tty_file_private* private_data; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void tty_add_file(struct tty_struct *tty, struct file *file)
{
 struct tty_file_private *priv = file->private_data;

 priv->tty = tty;
 priv->file = file;

 spin_lock(&tty->files_lock);
 list_add(&priv->list, &tty->tty_files);
 spin_unlock(&tty->files_lock);
}
