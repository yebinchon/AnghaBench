
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct aspeed_p2a_user* private_data; } ;
struct aspeed_p2a_user {struct aspeed_p2a_user* parent; int readwrite; scalar_t__ read; struct file* file; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct aspeed_p2a_user* kmalloc (int,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int aspeed_p2a_open(struct inode *inode, struct file *file)
{
 struct aspeed_p2a_user *priv;

 priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->file = file;
 priv->read = 0;
 memset(priv->readwrite, 0, sizeof(priv->readwrite));


 priv->parent = file->private_data;


 file->private_data = priv;

 return 0;
}
