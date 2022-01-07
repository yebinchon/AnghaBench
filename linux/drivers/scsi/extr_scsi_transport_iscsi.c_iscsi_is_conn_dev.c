
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ iscsi_conn_release ;

__attribute__((used)) static int iscsi_is_conn_dev(const struct device *dev)
{
 return dev->release == iscsi_conn_release;
}
