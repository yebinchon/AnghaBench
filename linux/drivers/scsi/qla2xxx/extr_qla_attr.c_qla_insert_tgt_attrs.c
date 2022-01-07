
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;


 struct device_attribute dev_attr_ql2xexchoffld ;
 struct device_attribute dev_attr_ql2xiniexchg ;
 struct device_attribute dev_attr_qlini_mode ;
 struct device_attribute** qla2x00_host_attrs ;

void qla_insert_tgt_attrs(void)
{
 struct device_attribute **attr;


 for (attr = &qla2x00_host_attrs[0]; *attr; ++attr)
  continue;

 *attr = &dev_attr_qlini_mode;
 attr++;
 *attr = &dev_attr_ql2xiniexchg;
 attr++;
 *attr = &dev_attr_ql2xexchoffld;
}
