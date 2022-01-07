
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ iscsi_session_release ;

int iscsi_is_session_dev(const struct device *dev)
{
 return dev->release == iscsi_session_release;
}
