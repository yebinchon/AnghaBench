
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int iscsi_destroy_flashnode_conn (int ) ;
 int iscsi_dev_to_flash_conn (struct device*) ;
 int iscsi_is_flashnode_conn_dev (struct device*,int *) ;

__attribute__((used)) static int iscsi_iter_destroy_flashnode_conn_fn(struct device *dev, void *data)
{
 if (!iscsi_is_flashnode_conn_dev(dev, ((void*)0)))
  return 0;

 return iscsi_destroy_flashnode_conn(iscsi_dev_to_flash_conn(dev));
}
