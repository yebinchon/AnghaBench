
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_mgr_ops {int dummy; } ;


 int EBUSY ;
 struct dss_mgr_ops const* dss_mgr_ops ;

int dss_install_mgr_ops(const struct dss_mgr_ops *mgr_ops)
{
 if (dss_mgr_ops)
  return -EBUSY;

 dss_mgr_ops = mgr_ops;

 return 0;
}
