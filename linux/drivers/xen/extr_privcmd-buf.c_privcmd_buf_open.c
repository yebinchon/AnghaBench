
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct privcmd_buf_private {int list; int lock; } ;
struct inode {int dummy; } ;
struct file {struct privcmd_buf_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct privcmd_buf_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int privcmd_buf_open(struct inode *ino, struct file *file)
{
 struct privcmd_buf_private *file_priv;

 file_priv = kzalloc(sizeof(*file_priv), GFP_KERNEL);
 if (!file_priv)
  return -ENOMEM;

 mutex_init(&file_priv->lock);
 INIT_LIST_HEAD(&file_priv->list);

 file->private_data = file_priv;

 return 0;
}
