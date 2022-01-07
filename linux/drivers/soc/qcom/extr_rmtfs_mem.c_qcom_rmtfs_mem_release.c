
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_rmtfs_mem {int dev; } ;
struct inode {int dummy; } ;
struct file {struct qcom_rmtfs_mem* private_data; } ;


 int put_device (int *) ;

__attribute__((used)) static int qcom_rmtfs_mem_release(struct inode *inode, struct file *filp)
{
 struct qcom_rmtfs_mem *rmtfs_mem = filp->private_data;

 put_device(&rmtfs_mem->dev);

 return 0;
}
