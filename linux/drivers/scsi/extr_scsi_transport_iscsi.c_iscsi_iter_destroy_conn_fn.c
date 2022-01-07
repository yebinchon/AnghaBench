
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int iscsi_destroy_conn (int ) ;
 int iscsi_dev_to_conn (struct device*) ;
 int iscsi_is_conn_dev (struct device*) ;

__attribute__((used)) static int iscsi_iter_destroy_conn_fn(struct device *dev, void *data)
{
 if (!iscsi_is_conn_dev(dev))
  return 0;
 return iscsi_destroy_conn(iscsi_dev_to_conn(dev));
}
