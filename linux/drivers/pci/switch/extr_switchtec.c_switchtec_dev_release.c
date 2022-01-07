
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_user {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct switchtec_user* private_data; } ;


 int stuser_put (struct switchtec_user*) ;

__attribute__((used)) static int switchtec_dev_release(struct inode *inode, struct file *filp)
{
 struct switchtec_user *stuser = filp->private_data;

 stuser_put(stuser);

 return 0;
}
