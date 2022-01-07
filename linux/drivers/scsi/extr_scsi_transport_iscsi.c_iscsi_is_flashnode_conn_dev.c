
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * bus; } ;


 int iscsi_flashnode_bus ;

__attribute__((used)) static int iscsi_is_flashnode_conn_dev(struct device *dev, void *data)
{
 return dev->bus == &iscsi_flashnode_bus;
}
